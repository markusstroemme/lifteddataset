@global_var_b5b50 = external constant [16 x i8]
@CWE122_Heap_Based_Buffer_Overflow__c_CWE129_fgets_45_goodB2GData = external local_unnamed_addr global i32
@global_var_b5b60 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2ec5d:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_fgets_45_goodB2GData, align 4
  %1 = call ptr @malloc(i32 40)
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br i1 %4, label %dec_label_pc_2ec9a, label %dec_label_pc_2ec87

dec_label_pc_2ec87:                               ; preds = %dec_label_pc_2ec5d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2ec9a:                               ; preds = %dec_label_pc_2ec5d, %dec_label_pc_2ec9a
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %5 = mul i64 %indvars.iv6.reload, 4
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_2ecbe, label %dec_label_pc_2ec9a

dec_label_pc_2ecbe:                               ; preds = %dec_label_pc_2ec9a
  %8 = icmp ugt i32 %0, 9
  br i1 %8, label %dec_label_pc_2ed16, label %dec_label_pc_2ecca

dec_label_pc_2ecca:                               ; preds = %dec_label_pc_2ecbe
  %9 = sext i32 %0 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %2
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2eced

dec_label_pc_2eced:                               ; preds = %dec_label_pc_2eced, %dec_label_pc_2ecca
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2ed25, label %dec_label_pc_2eced

dec_label_pc_2ed16:                               ; preds = %dec_label_pc_2ecbe
  call void @printLine(ptr @global_var_b5b60)
  br label %dec_label_pc_2ed25

dec_label_pc_2ed25:                               ; preds = %dec_label_pc_2eced, %dec_label_pc_2ed16
  call void @free(ptr %1)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2ed34:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_2ed99, label %dec_label_pc_2ed88

dec_label_pc_2ed88:                               ; preds = %dec_label_pc_2ed34
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2eda8

dec_label_pc_2ed99:                               ; preds = %dec_label_pc_2ed34
  call void @printLine(ptr @global_var_b5b50)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2eda8

dec_label_pc_2eda8:                               ; preds = %dec_label_pc_2ed99, %dec_label_pc_2ed88
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 %stack_var_-36.0.reload, ptr @CWE122_Heap_Based_Buffer_Overflow__c_CWE129_fgets_45_goodB2GData, align 4
  call void @anon0()
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2edd0, label %dec_label_pc_2edcb

dec_label_pc_2edcb:                               ; preds = %dec_label_pc_2eda8
  call void @__stack_chk_fail()
  br label %dec_label_pc_2edd0

dec_label_pc_2edd0:                               ; preds = %dec_label_pc_2edcb, %dec_label_pc_2eda8
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

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

