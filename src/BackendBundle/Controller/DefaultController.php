<?php

namespace BackendBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
                
        // obtiene el Entity Manager, que conecta con la base de datos.
        $em = $this->getDoctrine()->getManager();
        //obtiene el repositorio de la entidad User para hacer consultas.
        $user_repo = $em->getRepository("BackendBundle:User");
        // busca el User con ID 1 y lo devuelve como objeto
        $user = $user_repo->find(1);

        echo "Bienvenido ". $user->getName()." ".$user->getLastName();

        var_dump($user);
        die();

        return $this->render('BackendBundle:Default:index.html.twig');
    }
}
