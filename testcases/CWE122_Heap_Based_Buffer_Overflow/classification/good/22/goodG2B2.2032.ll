@CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_loop_22_goodG2B2Global = external local_unnamed_addr global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_13713:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_loop_22_goodG2B2Global, align 4
  %1 = call ptr @anon0(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_13774

dec_label_pc_13774:                               ; preds = %dec_label_pc_13713, %dec_label_pc_13774
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %5 = ptrtoint ptr %storemerge2.reload to i64
  %6 = add i64 %5, %3
  %7 = add i64 %5, %4
  %8 = inttoptr i64 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = inttoptr i64 %6 to ptr
  store i8 %9, ptr %10, align 1
  %11 = add i64 %5, 1
  %12 = inttoptr i64 %11 to ptr
  %13 = icmp ugt ptr %12, inttoptr (i64 99 to ptr)
  store ptr %12, ptr %storemerge2.reg2mem, align 8
  br i1 %13, label %dec_label_pc_1379b, label %dec_label_pc_13774

dec_label_pc_1379b:                               ; preds = %dec_label_pc_13774
  %14 = add i64 %3, 99
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  call void @printLine(ptr %1)
  %16 = bitcast ptr %1 to ptr
  call void @free(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_137d3, label %dec_label_pc_137ce

dec_label_pc_137ce:                               ; preds = %dec_label_pc_1379b
  call void @__stack_chk_fail()
  br label %dec_label_pc_137d3

dec_label_pc_137d3:                               ; preds = %dec_label_pc_137ce, %dec_label_pc_1379b
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_13891:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE805_char_loop_22_goodG2B2Global, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_138d1, label %dec_label_pc_138ab

dec_label_pc_138ab:                               ; preds = %dec_label_pc_13891
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_138ca, label %dec_label_pc_138c0

dec_label_pc_138c0:                               ; preds = %dec_label_pc_138ab
  call void @exit(i32 -1)
  unreachable

dec_label_pc_138ca:                               ; preds = %dec_label_pc_138ab
  %5 = bitcast ptr %2 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_138d1

dec_label_pc_138d1:                               ; preds = %dec_label_pc_138ca, %dec_label_pc_13891
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
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

