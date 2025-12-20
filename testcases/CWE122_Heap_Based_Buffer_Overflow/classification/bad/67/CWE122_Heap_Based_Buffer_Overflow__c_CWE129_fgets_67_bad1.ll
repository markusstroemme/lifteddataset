@global_var_b5e9c = external constant [16 x i8]
@global_var_b5eb0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_313a9:
  %stack_var_-36.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_3140e, label %dec_label_pc_313fd

dec_label_pc_313fd:                               ; preds = %dec_label_pc_313a9
  %5 = call i32 @atoi(ptr nonnull %2)
  %phitmp = zext i32 %5 to i64
  store i64 %phitmp, ptr %stack_var_-36.0.reg2mem, align 8
  br label %dec_label_pc_3141d

dec_label_pc_3140e:                               ; preds = %dec_label_pc_313a9
  call void @printLine(ptr @global_var_b5e9c)
  store i64 4294967295, ptr %stack_var_-36.0.reg2mem, align 8
  br label %dec_label_pc_3141d

dec_label_pc_3141d:                               ; preds = %dec_label_pc_3140e, %dec_label_pc_313fd
  %stack_var_-36.0.reload = load i64, ptr %stack_var_-36.0.reg2mem, align 8
  call void @anon1(i64 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_31442, label %dec_label_pc_3143d

dec_label_pc_3143d:                               ; preds = %dec_label_pc_3141d
  call void @__stack_chk_fail()
  br label %dec_label_pc_31442

dec_label_pc_31442:                               ; preds = %dec_label_pc_3143d, %dec_label_pc_3141d
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_3152b:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %sext = mul i64 %myStruct, 4294967296
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br i1 %3, label %dec_label_pc_31568, label %dec_label_pc_31555

dec_label_pc_31555:                               ; preds = %dec_label_pc_3152b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_31568:                               ; preds = %dec_label_pc_3152b, %dec_label_pc_31568
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %4 = mul i64 %indvars.iv6.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_3158c, label %dec_label_pc_31568

dec_label_pc_3158c:                               ; preds = %dec_label_pc_31568
  %7 = trunc i64 %myStruct to i32
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %dec_label_pc_315de, label %dec_label_pc_31592

dec_label_pc_31592:                               ; preds = %dec_label_pc_3158c
  %9 = ashr exact i64 %sext, 30
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_315b5

dec_label_pc_315b5:                               ; preds = %dec_label_pc_315b5, %dec_label_pc_31592
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %1
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_315ed, label %dec_label_pc_315b5

dec_label_pc_315de:                               ; preds = %dec_label_pc_3158c
  call void @printLine(ptr @global_var_b5eb0)
  br label %dec_label_pc_315ed

dec_label_pc_315ed:                               ; preds = %dec_label_pc_315b5, %dec_label_pc_315de
  call void @free(ptr %0)
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

