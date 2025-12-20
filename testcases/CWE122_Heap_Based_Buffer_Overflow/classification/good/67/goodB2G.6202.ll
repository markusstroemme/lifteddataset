@global_var_b6b64 = external constant [3 x i8]
@global_var_b6b88 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_3bdfc:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 -1, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b6b64, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %stack_var_-24, align 8
  %4 = and i64 %3, 4294967295
  call void @anon0(i64 %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_3be65, label %dec_label_pc_3be60

dec_label_pc_3be60:                               ; preds = %dec_label_pc_3bdfc
  call void @__stack_chk_fail()
  br label %dec_label_pc_3be65

dec_label_pc_3be65:                               ; preds = %dec_label_pc_3be60, %dec_label_pc_3bdfc
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_3c028:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %sext = mul i64 %myStruct, 4294967296
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br i1 %3, label %dec_label_pc_3c065, label %dec_label_pc_3c052

dec_label_pc_3c052:                               ; preds = %dec_label_pc_3c028
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3c065:                               ; preds = %dec_label_pc_3c028, %dec_label_pc_3c065
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %4 = mul i64 %indvars.iv6.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_3c089, label %dec_label_pc_3c065

dec_label_pc_3c089:                               ; preds = %dec_label_pc_3c065
  %7 = trunc i64 %myStruct to i32
  %8 = icmp ugt i32 %7, 9
  br i1 %8, label %dec_label_pc_3c0e1, label %dec_label_pc_3c095

dec_label_pc_3c095:                               ; preds = %dec_label_pc_3c089
  %9 = ashr exact i64 %sext, 30
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3c0b8

dec_label_pc_3c0b8:                               ; preds = %dec_label_pc_3c0b8, %dec_label_pc_3c095
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %1
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3c0f0, label %dec_label_pc_3c0b8

dec_label_pc_3c0e1:                               ; preds = %dec_label_pc_3c089
  call void @printLine(ptr @global_var_b6b88)
  br label %dec_label_pc_3c0f0

dec_label_pc_3c0f0:                               ; preds = %dec_label_pc_3c0b8, %dec_label_pc_3c0e1
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

