@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_struct_loop_45_goodG2BData = external local_unnamed_addr global ptr
@global_var_7c84a = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon0() local_unnamed_addr {
dec_label_pc_32f29:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %stack_var_-832 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load ptr, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_struct_loop_45_goodG2BData, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %stack_var_-832 to ptr
  store i64 %3, ptr %4, align 8
  %5 = add i64 %0, -816
  %6 = add i64 %0, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_32f62

dec_label_pc_32f62:                               ; preds = %dec_label_pc_32f29, %dec_label_pc_32f62
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge24.reload to i64
  %8 = mul i64 %7, 8
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %6, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add i64 %7, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge24.reg2mem, align 8
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br i1 %15, label %dec_label_pc_32fa5, label %dec_label_pc_32f62

dec_label_pc_32fa5:                               ; preds = %dec_label_pc_32f62, %dec_label_pc_32fa5
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %16 = ptrtoint ptr %storemerge3.reload to i64
  %17 = mul i64 %16, 8
  %18 = load ptr, ptr %stack_var_-832, align 8
  %19 = ptrtoint ptr %18 to i64
  %20 = add i64 %17, %19
  %21 = add i64 %17, %5
  %22 = inttoptr i64 %21 to ptr
  %23 = load i64, ptr %22, align 8
  %24 = inttoptr i64 %20 to ptr
  store i64 %23, ptr %24, align 8
  %25 = add i64 %16, 1
  %26 = inttoptr i64 %25 to ptr
  %27 = icmp ugt ptr %26, inttoptr (i64 99 to ptr)
  store ptr %26, ptr %storemerge3.reg2mem, align 8
  br i1 %27, label %dec_label_pc_32fe2, label %dec_label_pc_32fa5

dec_label_pc_32fe2:                               ; preds = %dec_label_pc_32fa5
  %28 = load ptr, ptr %stack_var_-832, align 8
  call void @printStructLine(ptr %28)
  %29 = bitcast ptr %28 to ptr
  call void @free(ptr %29)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %1, %30
  br i1 %31, label %dec_label_pc_33015, label %dec_label_pc_33010

dec_label_pc_33010:                               ; preds = %dec_label_pc_32fe2
  call void @__stack_chk_fail()
  br label %dec_label_pc_33015

dec_label_pc_33015:                               ; preds = %dec_label_pc_33010, %dec_label_pc_32fe2
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_33017:
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_3304a, label %dec_label_pc_33040

dec_label_pc_33040:                               ; preds = %dec_label_pc_33017
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3304a:                               ; preds = %dec_label_pc_33017
  %3 = ptrtoint ptr %0 to i64
  store i64 %3, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_struct_loop_45_goodG2BData, align 8
  call void @anon0()
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_65a35:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_7c84a, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

