@global_var_b4c98 = external constant [10 x i8]
@global_var_b4ca8 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32
@global_var_6987 = external constant i16

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_2196a:
  %rax.0.reg2mem = alloca i32, align 4
  %stack_var_-76.03.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 %data, ptr %stack_var_-76.03.reg2mem, align 4
  br i1 %2, label %dec_label_pc_21a5d, label %dec_label_pc_219b0

dec_label_pc_219b0:                               ; preds = %dec_label_pc_2196a
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_b4c98)
  %5 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 %data, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_21a53, label %dec_label_pc_21a07

dec_label_pc_21a07:                               ; preds = %dec_label_pc_219b0
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i32 %data, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_21a53, label %dec_label_pc_21a2e

dec_label_pc_21a2e:                               ; preds = %dec_label_pc_21a07
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = sext i32 %9 to i64
  %14 = add i64 %12, -22
  %15 = add i64 %14, %13
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = call i32 @atoi(ptr nonnull %17)
  store i32 %18, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_21a53

dec_label_pc_21a53:                               ; preds = %dec_label_pc_219b0, %dec_label_pc_21a2e, %dec_label_pc_21a07
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.03.reg2mem, align 4
  br label %dec_label_pc_21a5d

dec_label_pc_21a5d:                               ; preds = %dec_label_pc_2196a, %dec_label_pc_21a53
  %stack_var_-76.03.reload = load i32, ptr %stack_var_-76.03.reg2mem, align 4
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  store i32 %stack_var_-76.03.reload, ptr %rax.0.reg2mem, align 4
  br i1 %21, label %dec_label_pc_21a74, label %dec_label_pc_21a6f

dec_label_pc_21a6f:                               ; preds = %dec_label_pc_21a5d
  call void @__stack_chk_fail()
  store i32 ptrtoint (ptr @0 to i32), ptr %rax.0.reg2mem, align 4
  br label %dec_label_pc_21a74

dec_label_pc_21a74:                               ; preds = %dec_label_pc_21a6f, %dec_label_pc_21a5d
  %rax.0.reload = load i32, ptr %rax.0.reg2mem, align 4
  ret i32 %rax.0.reload
}

define void @anon0() local_unnamed_addr {
dec_label_pc_21a76:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = call i32 @anon1(i32 -1)
  %1 = call ptr @malloc(i32 40)
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %4, label %dec_label_pc_21abe, label %dec_label_pc_21aab

dec_label_pc_21aab:                               ; preds = %dec_label_pc_21a76
  call void @exit(i32 -1)
  unreachable

dec_label_pc_21abe:                               ; preds = %dec_label_pc_21a76, %dec_label_pc_21abe
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_21ae2, label %dec_label_pc_21abe

dec_label_pc_21ae2:                               ; preds = %dec_label_pc_21abe
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %dec_label_pc_21b34, label %dec_label_pc_21ae8

dec_label_pc_21ae8:                               ; preds = %dec_label_pc_21ae2
  %9 = sext i32 %0 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %2
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_21b0b

dec_label_pc_21b0b:                               ; preds = %dec_label_pc_21b0b, %dec_label_pc_21ae8
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_21b43, label %dec_label_pc_21b0b

dec_label_pc_21b34:                               ; preds = %dec_label_pc_21ae2
  call void @printLine(ptr @global_var_b4ca8)
  br label %dec_label_pc_21b43

dec_label_pc_21b43:                               ; preds = %dec_label_pc_21b0b, %dec_label_pc_21b34
  call void @free(ptr %1)
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

