@global_var_b5a28 = external constant [32 x i8]
@global_var_b5a48 = external constant [16 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_2de39:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %3, label %dec_label_pc_2de70, label %dec_label_pc_2de5d

dec_label_pc_2de5d:                               ; preds = %dec_label_pc_2de39
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2de70:                               ; preds = %dec_label_pc_2de39, %dec_label_pc_2de70
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %4 = mul i64 %indvars.iv4.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_2de94, label %dec_label_pc_2de70

dec_label_pc_2de94:                               ; preds = %dec_label_pc_2de70
  %7 = icmp slt i32 %data, 0
  br i1 %7, label %dec_label_pc_2dee6, label %dec_label_pc_2de9a

dec_label_pc_2de9a:                               ; preds = %dec_label_pc_2de94
  %8 = sext i32 %data to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2debd

dec_label_pc_2debd:                               ; preds = %dec_label_pc_2debd, %dec_label_pc_2de9a
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %1
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2def5, label %dec_label_pc_2debd

dec_label_pc_2dee6:                               ; preds = %dec_label_pc_2de94
  call void @printLine(ptr @global_var_b5a28)
  br label %dec_label_pc_2def5

dec_label_pc_2def5:                               ; preds = %dec_label_pc_2debd, %dec_label_pc_2dee6
  call void @free(ptr %0)
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2df04:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_2df69, label %dec_label_pc_2df58

dec_label_pc_2df58:                               ; preds = %dec_label_pc_2df04
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2df78

dec_label_pc_2df69:                               ; preds = %dec_label_pc_2df04
  call void @printLine(ptr @global_var_b5a48)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2df78

dec_label_pc_2df78:                               ; preds = %dec_label_pc_2df69, %dec_label_pc_2df58
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  call void @anon1(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2df97, label %dec_label_pc_2df92

dec_label_pc_2df92:                               ; preds = %dec_label_pc_2df78
  call void @__stack_chk_fail()
  br label %dec_label_pc_2df97

dec_label_pc_2df97:                               ; preds = %dec_label_pc_2df92, %dec_label_pc_2df78
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

