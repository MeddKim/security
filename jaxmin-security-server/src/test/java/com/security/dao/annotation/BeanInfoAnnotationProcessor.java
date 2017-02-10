package com.security.dao.annotation;

import java.io.*;
import java.util.*;
import javax.annotation.processing.*;
import javax.lang.model.SourceVersion;
import javax.lang.model.element.*;
import javax.tools.Diagnostic.*;

/**
 * This class is the processor that analyzes Property annotations.
 * @version 1.11 2012-01-26
 * @author Cay Horstmann
 */
//指定注解处理器支持那些注解
@SupportedAnnotationTypes("com.security.dao.annotation.Property")
public class BeanInfoAnnotationProcessor extends AbstractProcessor
{
    /**
     * @param annotations 本轮中需要进行处理的注解集,
     *                    即在@SupportedAnnotationTypes中声明的需要处理的注解
     * @param roundEnv 当前处理轮次信息
     * @return
     */
    @Override
    public boolean process(Set<? extends TypeElement> annotations, RoundEnvironment roundEnv)
    {
        //遍历注解集，该段实例代码中注解集中只有 @Property
        for (TypeElement t : annotations)
        {
            Map<String, Property> props = new LinkedHashMap<String, Property>();
            String beanClassName = null;
            //roundEnv.getElementsAnnotatedWith(t)获取所有使用了注解`t`的Elements，并遍历
            //该段示例代码中`t`即注解`Property`
            for (Element e : roundEnv.getElementsAnnotatedWith(t))
            {
                //获取使用了`Property`注解的Element的名称
                String mname = e.getSimpleName().toString();
                String[] prefixes = { "get", "set", "is" };
                boolean found = false;
                //保证propety 注解的Element是以get set is开头
                for (int i = 0; !found && i < prefixes.length; i++)
                    if (mname.startsWith(prefixes[i]))
                    {
                        found = true;
                        int start = prefixes[i].length();
//                        String name = Introspector.decapitalize(mname.substring(start));
                        props.put(mname, e.getAnnotation(Property.class));
                    }

                if (!found) processingEnv.getMessager().printMessage(Kind.ERROR,
                        "@Property must be applied to getXxx, setXxx, or isXxx method", e);
                else if (beanClassName == null)
                    beanClassName = ((TypeElement) e.getEnclosingElement()).getQualifiedName()
                            .toString();
            }
            try
            {
                if (beanClassName != null)
//                    writeBeanInfoFile(beanClassName, props);
                    writeClassInfo(beanClassName, props);
            }
            catch (IOException e)
            {
                e.printStackTrace();
            }
        }
        return true;
    }

    private void writeClassInfo(String beanClassName, Map<String, Property> props) throws IOException {
        //类名为beanClassName，包含@Property注解的方法有
        String path = "D:\\file\\classInfo.log";
        File file = new File(path);
        FileWriter writer = null;
        PrintWriter pWriter = null;
        try {
            writer = new FileWriter(file,true);
            pWriter = new PrintWriter(writer);
            //
            pWriter.print("在"+beanClassName+"中有使用了注解@Property的方法有：");
            for (Map.Entry<String, Property> e : props.entrySet()){
                pWriter.print(e.getKey()+"   ");
            }
            pWriter.println(";");
            pWriter.flush();
            writer.flush();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            pWriter.close();
            writer.close();
        }

    }

    @Override
    public SourceVersion getSupportedSourceVersion() {
        return SourceVersion.latestSupported();
    }
}
