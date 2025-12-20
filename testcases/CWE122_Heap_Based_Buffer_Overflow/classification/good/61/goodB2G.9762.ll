@global_var_b8dc0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_5eed4:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %0 = call i32 @anon0(i32 -1)
  %1 = call ptr @malloc(i32 40)
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br i1 %4, label %dec_label_pc_5ef1c, label %dec_label_pc_5ef09

dec_label_pc_5ef09:                               ; preds = %dec_label_pc_5eed4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5ef1c:                               ; preds = %dec_label_pc_5eed4, %dec_label_pc_5ef1c
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %5 = mul i64 %indvars.iv6.reload, 4
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_5ef40, label %dec_label_pc_5ef1c

dec_label_pc_5ef40:                               ; preds = %dec_label_pc_5ef1c
  %8 = icmp ugt i32 %0, 9
  br i1 %8, label %dec_label_pc_5ef98, label %dec_label_pc_5ef4c

dec_label_pc_5ef4c:                               ; preds = %dec_label_pc_5ef40
  %9 = sext i32 %0 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %2
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5ef6f

dec_label_pc_5ef6f:                               ; preds = %dec_label_pc_5ef6f, %dec_label_pc_5ef4c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5efa7, label %dec_label_pc_5ef6f

dec_label_pc_5ef98:                               ; preds = %dec_label_pc_5ef40
  call void @printLine(ptr @global_var_b8dc0)
  br label %dec_label_pc_5efa7

dec_label_pc_5efa7:                               ; preds = %dec_label_pc_5ef6f, %dec_label_pc_5ef98
  call void @free(ptr %1)
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_5f04e:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  ret i32 %storemerge.in
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

declare i32 @rand() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

