module Helper exposing (..)

-- 1.0 GradeStatus


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map
        (\n ->
            if n < 0 then
                Pending

            else if n >= 7 then
                Approved

            else
                Failed
        )
        grades



-- 2.1 AirplaneStatus


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled



-- 2.2 airplaneScheduleAction


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"



-- 2.3 airportAction


airportAction : List AirplaneStatus -> List String
airportAction statuses =
    List.map airplaneScheduleAction statuses
