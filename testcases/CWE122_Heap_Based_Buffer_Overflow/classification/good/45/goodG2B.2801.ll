@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_memcpy_45_goodG2BData = external local_unnamed_addr global i64

define void @anon0() local_unnamed_addr {
dec_label_pc_1b808:
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_memcpy_45_goodG2BData, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %3 = load i64, ptr %stack_var_-136, align 8
  %4 = inttoptr i64 %1 to ptr
  store i64 %3, ptr %4, align 8
  %5 = add i64 %1, 8
  %6 = inttoptr i64 %5 to ptr
  %7 = add i64 %1, 16
  %8 = inttoptr i64 %7 to ptr
  %9 = add i64 %1, 24
  %10 = inttoptr i64 %9 to ptr
  %11 = add i64 %1, 32
  %12 = inttoptr i64 %11 to ptr
  %13 = add i64 %1, 40
  %14 = inttoptr i64 %13 to ptr
  %15 = add i64 %1, 48
  %16 = inttoptr i64 %15 to ptr
  %17 = add i64 %1, 56
  %18 = inttoptr i64 %17 to ptr
  %19 = add i64 %1, 64
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %1, 72
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %1, 80
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %1, 88
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %1, 96
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %1, 99
  %30 = inttoptr i64 %29 to ptr
  store i8 0, ptr %30, align 1
  %31 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %31)
  call void @free(ptr %4)
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %0, %32
  br i1 %33, label %dec_label_pc_1b8fc, label %dec_label_pc_1b8f7

dec_label_pc_1b8f7:                               ; preds = %dec_label_pc_1b808
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b8fc

dec_label_pc_1b8fc:                               ; preds = %dec_label_pc_1b8f7, %dec_label_pc_1b808
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1b902:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_1b935, label %dec_label_pc_1b92b

dec_label_pc_1b92b:                               ; preds = %dec_label_pc_1b902
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1b935:                               ; preds = %dec_label_pc_1b902
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  %4 = ptrtoint ptr %0 to i64
  store i64 %4, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_memcpy_45_goodG2BData, align 8
  call void @anon0()
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

