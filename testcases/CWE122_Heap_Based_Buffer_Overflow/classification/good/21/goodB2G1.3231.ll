@global_var_b4a88 = external constant [10 x i8]
@global_var_b4a92 = external constant [21 x i8]
@global_var_b4aa8 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16
@global_var_ec128 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1f981:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_ec128, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1f9ae, label %dec_label_pc_1f99a

dec_label_pc_1f99a:                               ; preds = %dec_label_pc_1f981
  call void @printLine(ptr @global_var_b4a92)
  br label %dec_label_pc_1fa6d

dec_label_pc_1f9ae:                               ; preds = %dec_label_pc_1f981
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %5, label %dec_label_pc_1f9d6, label %dec_label_pc_1f9c3

dec_label_pc_1f9c3:                               ; preds = %dec_label_pc_1f9ae
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1f9d6:                               ; preds = %dec_label_pc_1f9ae, %dec_label_pc_1f9d6
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %6 = mul i64 %indvars.iv5.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_1f9fa, label %dec_label_pc_1f9d6

dec_label_pc_1f9fa:                               ; preds = %dec_label_pc_1f9d6
  %9 = icmp ugt i32 %data, 9
  br i1 %9, label %dec_label_pc_1fa52, label %dec_label_pc_1fa06

dec_label_pc_1fa06:                               ; preds = %dec_label_pc_1f9fa
  %10 = sext i32 %data to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %3
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1fa29

dec_label_pc_1fa29:                               ; preds = %dec_label_pc_1fa29, %dec_label_pc_1fa06
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %3
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1fa61, label %dec_label_pc_1fa29

dec_label_pc_1fa52:                               ; preds = %dec_label_pc_1f9fa
  call void @printLine(ptr @global_var_b4aa8)
  br label %dec_label_pc_1fa61

dec_label_pc_1fa61:                               ; preds = %dec_label_pc_1fa29, %dec_label_pc_1fa52
  call void @free(ptr %2)
  br label %dec_label_pc_1fa6d

dec_label_pc_1fa6d:                               ; preds = %dec_label_pc_1fa61, %dec_label_pc_1f99a
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1fa70:
  %stack_var_-68.03.reg2mem = alloca i32, align 4
  %stack_var_-68.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-68.03.reg2mem, align 4
  br i1 %2, label %dec_label_pc_1fb67, label %dec_label_pc_1faba

dec_label_pc_1faba:                               ; preds = %dec_label_pc_1fa70
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_b4a88)
  %5 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 -1, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_1fb5d, label %dec_label_pc_1fb11

dec_label_pc_1fb11:                               ; preds = %dec_label_pc_1faba
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i32 -1, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_1fb5d, label %dec_label_pc_1fb38

dec_label_pc_1fb38:                               ; preds = %dec_label_pc_1fb11
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = sext i32 %9 to i64
  %14 = add i64 %12, -22
  %15 = add i64 %14, %13
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = call i32 @atoi(ptr nonnull %17)
  store i32 %18, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br label %dec_label_pc_1fb5d

dec_label_pc_1fb5d:                               ; preds = %dec_label_pc_1faba, %dec_label_pc_1fb38, %dec_label_pc_1fb11
  %stack_var_-68.0.ph.reload = load i32, ptr %stack_var_-68.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  store i32 %stack_var_-68.0.ph.reload, ptr %stack_var_-68.03.reg2mem, align 4
  br label %dec_label_pc_1fb67

dec_label_pc_1fb67:                               ; preds = %dec_label_pc_1fa70, %dec_label_pc_1fb5d
  %stack_var_-68.03.reload = load i32, ptr %stack_var_-68.03.reg2mem, align 4
  store i32 0, ptr @global_var_ec128, align 4
  call void @anon0(i32 %stack_var_-68.03.reload)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_1fb90, label %dec_label_pc_1fb8b

dec_label_pc_1fb8b:                               ; preds = %dec_label_pc_1fb67
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fb90

dec_label_pc_1fb90:                               ; preds = %dec_label_pc_1fb8b, %dec_label_pc_1fb67
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

