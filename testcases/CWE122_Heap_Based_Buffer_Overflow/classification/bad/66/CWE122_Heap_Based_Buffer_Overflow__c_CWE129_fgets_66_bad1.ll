@global_var_b5e44 = external constant [16 x i8]
@global_var_b5e58 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_30f76:
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_30fdb, label %dec_label_pc_30fca

dec_label_pc_30fca:                               ; preds = %dec_label_pc_30f76
  %5 = call i32 @atoi(ptr nonnull %2)
  br label %dec_label_pc_30fea

dec_label_pc_30fdb:                               ; preds = %dec_label_pc_30f76
  call void @printLine(ptr @global_var_b5e44)
  br label %dec_label_pc_30fea

dec_label_pc_30fea:                               ; preds = %dec_label_pc_30fdb, %dec_label_pc_30fca
  %6 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_31011, label %dec_label_pc_3100c

dec_label_pc_3100c:                               ; preds = %dec_label_pc_30fea
  call void @__stack_chk_fail()
  br label %dec_label_pc_31011

dec_label_pc_31011:                               ; preds = %dec_label_pc_3100c, %dec_label_pc_30fea
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_31121:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %7, label %dec_label_pc_31163, label %dec_label_pc_31150

dec_label_pc_31150:                               ; preds = %dec_label_pc_31121
  call void @exit(i32 -1)
  unreachable

dec_label_pc_31163:                               ; preds = %dec_label_pc_31121, %dec_label_pc_31163
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %8 = mul i64 %indvars.iv4.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_31187, label %dec_label_pc_31163

dec_label_pc_31187:                               ; preds = %dec_label_pc_31163
  %11 = icmp slt i32 %3, 0
  br i1 %11, label %dec_label_pc_311d9, label %dec_label_pc_3118d

dec_label_pc_3118d:                               ; preds = %dec_label_pc_31187
  %12 = sext i32 %3 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %5
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_311b0

dec_label_pc_311b0:                               ; preds = %dec_label_pc_311b0, %dec_label_pc_3118d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %5
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_311e8, label %dec_label_pc_311b0

dec_label_pc_311d9:                               ; preds = %dec_label_pc_31187
  call void @printLine(ptr @global_var_b5e58)
  br label %dec_label_pc_311e8

dec_label_pc_311e8:                               ; preds = %dec_label_pc_311b0, %dec_label_pc_311d9
  call void @free(ptr %4)
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

