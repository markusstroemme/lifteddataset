@CWE122_Heap_Based_Buffer_Overflow__sizeof_double_45_goodG2BData = external local_unnamed_addr global ptr
@global_var_34bf2 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_66fe:
  %0 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__sizeof_double_45_goodG2BData, align 8
  %1 = ptrtoint ptr %0 to i64
  %2 = call i128 @__asm_movq(i64 %1)
  %3 = trunc i128 %2 to i64
  %4 = bitcast i64 %3 to double
  call void @printDoubleLine(double %4)
  %5 = bitcast ptr %0 to ptr
  call void @free(ptr %5)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_6735:
  %0 = call ptr @malloc(i32 8)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_6768, label %dec_label_pc_675e

dec_label_pc_675e:                                ; preds = %dec_label_pc_6735
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6768:                                ; preds = %dec_label_pc_6735
  %3 = ptrtoint ptr %0 to i64
  %4 = call i128 @__asm_movsd(i64 9098483789791991595)
  %5 = call i64 @__asm_movsd.211(i128 %4)
  store i64 %5, ptr %0, align 8
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__sizeof_double_45_goodG2BData, align 8
  call void @anon0()
  ret void
}

define void @printDoubleLine(double %doubleNumber) local_unnamed_addr {
dec_label_pc_2bad7:
  %0 = fptrunc double %doubleNumber to float
  %1 = bitcast float %0 to i32
  %2 = sext i32 %1 to i128
  %3 = call i64 @__asm_movsd.211(i128 %2)
  %4 = call i128 @__asm_movq(i64 %3)
  %5 = trunc i128 %4 to i64
  %6 = bitcast i64 %5 to double
  %7 = call i32 (ptr, ...) @printf(ptr @global_var_34bf2, double %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i128 @__asm_movsd(i64) local_unnamed_addr

declare i64 @__asm_movsd.211(i128) local_unnamed_addr

declare i128 @__asm_movq(i64) local_unnamed_addr

