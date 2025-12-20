@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_loop_45_badData = external local_unnamed_addr global i64

define void @anon1() local_unnamed_addr {
dec_label_pc_1458d:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_loop_45_badData, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_145d7

dec_label_pc_145d7:                               ; preds = %dec_label_pc_1458d, %dec_label_pc_145d7
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge1.reload to i64
  %5 = add i64 %1, %4
  %6 = add i64 %4, %3
  %7 = inttoptr i64 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = inttoptr i64 %5 to ptr
  store i8 %8, ptr %9, align 1
  %10 = add i64 %4, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge1.reg2mem, align 8
  br i1 %12, label %dec_label_pc_145fe, label %dec_label_pc_145d7

dec_label_pc_145fe:                               ; preds = %dec_label_pc_145d7
  %13 = add i64 %1, 99
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  %15 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %15)
  %16 = inttoptr i64 %1 to ptr
  call void @free(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_14636, label %dec_label_pc_14631

dec_label_pc_14631:                               ; preds = %dec_label_pc_145fe
  call void @__stack_chk_fail()
  br label %dec_label_pc_14636

dec_label_pc_14636:                               ; preds = %dec_label_pc_14631, %dec_label_pc_145fe
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_14638:
  %0 = call ptr @malloc(i32 50)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_1466b, label %dec_label_pc_14661

dec_label_pc_14661:                               ; preds = %dec_label_pc_14638
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1466b:                               ; preds = %dec_label_pc_14638
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  %4 = ptrtoint ptr %0 to i64
  store i64 %4, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_loop_45_badData, align 8
  call void @anon1()
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

