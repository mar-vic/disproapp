
xquery version "3.1";

module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config";

import module namespace pm-dispro-web="http://www.tei-c.org/pm/models/dispro/web/module" at "../transform/dispro-web-module.xql";
import module namespace pm-dispro-print="http://www.tei-c.org/pm/models/dispro/print/module" at "../transform/dispro-print-module.xql";
import module namespace pm-dispro-latex="http://www.tei-c.org/pm/models/dispro/latex/module" at "../transform/dispro-latex-module.xql";
import module namespace pm-dispro-epub="http://www.tei-c.org/pm/models/dispro/epub/module" at "../transform/dispro-epub-module.xql";
import module namespace pm-dispro-fo="http://www.tei-c.org/pm/models/dispro/fo/module" at "../transform/dispro-fo-module.xql";
import module namespace pm-docx-tei="http://www.tei-c.org/pm/models/docx/tei/module" at "../transform/docx-tei-module.xql";

declare variable $pm-config:web-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "dispro.odd" return pm-dispro-web:transform($xml, $parameters)
    default return pm-dispro-web:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:print-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "dispro.odd" return pm-dispro-print:transform($xml, $parameters)
    default return pm-dispro-print:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:latex-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "dispro.odd" return pm-dispro-latex:transform($xml, $parameters)
    default return pm-dispro-latex:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:epub-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "dispro.odd" return pm-dispro-epub:transform($xml, $parameters)
    default return pm-dispro-epub:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:fo-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "dispro.odd" return pm-dispro-fo:transform($xml, $parameters)
    default return pm-dispro-fo:transform($xml, $parameters)
            
    
};
            


declare variable $pm-config:tei-transform := function($xml as node()*, $parameters as map(*)?, $odd as xs:string?) {
    switch ($odd)
    case "docx.odd" return pm-docx-tei:transform($xml, $parameters)
    default return error(QName("http://www.tei-c.org/tei-simple/pm-config", "error"), "No default ODD found for output mode tei")
            
    
};
            
    