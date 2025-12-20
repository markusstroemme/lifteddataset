@CWE122_Heap_Based_Buffer_Overflow__c_CWE129_fscanf_45_goodB2GData = external local_unnamed_addr global i32
@global_var_b68b0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr
@global_var_b68a8 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_399ee:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_fscanf_45_goodB2GData, align 4
  %1 = call ptr @malloc(i32 40)
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br i1 %4, label %dec_label_pc_39a2b, label %dec_label_pc_39a18

dec_label_pc_39a18:                               ; preds = %dec_label_pc_399ee
  call void @exit(i32 -1)
  unreachable

dec_label_pc_39a2b:                               ; preds = %dec_label_pc_399ee, %dec_label_pc_39a2b
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %5 = mul i64 %indvars.iv6.reload, 4
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_39a4f, label %dec_label_pc_39a2b

dec_label_pc_39a4f:                               ; preds = %dec_label_pc_39a2b
  %8 = icmp ugt i32 %0, 9
  br i1 %8, label %dec_label_pc_39aa7, label %dec_label_pc_39a5b

dec_label_pc_39a5b:                               ; preds = %dec_label_pc_39a4f
  %9 = sext i32 %0 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %2
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_39a7e

dec_label_pc_39a7e:                               ; preds = %dec_label_pc_39a7e, %dec_label_pc_39a5b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_39ab6, label %dec_label_pc_39a7e

dec_label_pc_39aa7:                               ; preds = %dec_label_pc_39a4f
  call void @printLine(ptr @global_var_b68b0)
  br label %dec_label_pc_39ab6

dec_label_pc_39ab6:                               ; preds = %dec_label_pc_39a7e, %dec_label_pc_39aa7
  call void @free(ptr %1)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_39ac5:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b68a8)
  store i32 -1, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_fscanf_45_goodB2GData, align 4
  call void @anon0()
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_39b31, label %dec_label_pc_39b2c

dec_label_pc_39b2c:                               ; preds = %dec_label_pc_39ac5
  call void @__stack_chk_fail()
  br label %dec_label_pc_39b31

dec_label_pc_39b31:                               ; preds = %dec_label_pc_39b2c, %dec_label_pc_39ac5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

