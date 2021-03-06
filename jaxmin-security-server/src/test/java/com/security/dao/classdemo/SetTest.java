package com.security.dao.classdemo;

import java.util.*;
import java.util.logging.*;

public class SetTest
{
    public static void main(String[] args)
    {
        Logger.getLogger(Logger.GLOBAL_LOGGER_NAME).setLevel(Level.FINEST);
        Handler handler = new ConsoleHandler();
        handler.setLevel(Level.FINEST);
        Logger.getLogger(Logger.GLOBAL_LOGGER_NAME).addHandler(handler);

        Set<Item> parts = new HashSet<Item>();
        parts.add(new Item("Toaster", 1279));
        parts.add(new Item("Microwave", 4104));
        parts.add(new Item("Toaster", 1279));
        System.out.println(parts);
    }
}

