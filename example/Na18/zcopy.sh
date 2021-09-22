for f in td_*;
do
        cd $f;
        echo $f;
        cp -r ../gs/restart . 
        cd ..;
done;