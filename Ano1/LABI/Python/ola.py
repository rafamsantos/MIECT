#encoding=utf-8

def main(args):
    return 0

if __name__ == '__main__':
    import sys
    a="laboratorios"
    b="de"
    c="informática"
    print(len(c))
    print(a + " "+ b + " " + c)
    print(a[0:3]+"-"+c[0]+ " " +str(2020))
    print(a.upper())
    print(a.title())
    print(a.find("t"))
    print(a.isalpha())
    print(a.isdigit())
    print(a.split(" "))
   
    equipa1="Benfica"
    equipa2="Porto"
    golos1=4
    golos2=0
    print("%s : %d \n%s : %d" %(equipa1,golos1,equipa2, golos2 ))
    
    a=3
    sa=str(3)
    b=int(sa)
    c=float(sa)*1.2
    print("%d %s %d %4.2f"%(a,sa,b,c))
    
    l= ['MIECT' , 'LEI' , 'MSI' , 'MIEET']
    print(l)
    print(l[0])
    print(l[0:2])
    
    l=[]
    l1=[]
    l2=[]
    l.append('Rafa')
    l1.append('Machado')
    l2.append('dos Santos')
    l.extend(l1)
    l.extend(l2)
    print(l)
    
    n=[3,6,3,8,5,4,5,7]
    n.sort()
    print(n)
    
    
	
    
    
    
    
    
    
    sys.exit(main(sys.argv))
