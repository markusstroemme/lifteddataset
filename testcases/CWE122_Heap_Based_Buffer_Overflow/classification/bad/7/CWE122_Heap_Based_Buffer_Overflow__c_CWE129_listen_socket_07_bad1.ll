@global_var_b79e0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16
@global_var_ec044 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_487bb:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv10.reg2mem = alloca i64, align 8
  %stack_var_-84.1.reg2mem = alloca i32, align 4
  %stack_var_-84.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec044, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_48904, label %dec_label_pc_487ec

dec_label_pc_487ec:                               ; preds = %dec_label_pc_487bb
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  br i1 %5, label %dec_label_pc_48904, label %dec_label_pc_4881b

dec_label_pc_4881b:                               ; preds = %dec_label_pc_487ec
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @bind(i32 %4, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %dec_label_pc_488f4.thread7, label %dec_label_pc_48867

dec_label_pc_48867:                               ; preds = %dec_label_pc_4881b
  %11 = call i32 @listen(i32 %4, i32 5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %dec_label_pc_488f4.thread7, label %dec_label_pc_4887b

dec_label_pc_4887b:                               ; preds = %dec_label_pc_48867
  %13 = call i32 @accept(i32 %4, ptr null, ptr null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %dec_label_pc_488f4.thread7, label %dec_label_pc_48898

dec_label_pc_48898:                               ; preds = %dec_label_pc_4887b
  %15 = call i32 @recv(i32 %13, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  store i32 -1, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br i1 %17, label %dec_label_pc_488fa, label %dec_label_pc_488bf

dec_label_pc_488bf:                               ; preds = %dec_label_pc_48898
  %18 = ptrtoint ptr %stack_var_-8 to i64
  %19 = sext i32 %15 to i64
  %20 = add i64 %18, -22
  %21 = add i64 %20, %19
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  %23 = bitcast ptr %stack_var_-30 to ptr
  %24 = call i32 @atoi(ptr nonnull %23)
  store i32 %24, ptr %stack_var_-84.0.ph.reg2mem, align 4
  br label %dec_label_pc_488fa

dec_label_pc_488f4.thread7:                       ; preds = %dec_label_pc_4887b, %dec_label_pc_48867, %dec_label_pc_4881b
  %25 = call i32 @close(i32 %4)
  store i32 -1, ptr %stack_var_-84.1.reg2mem, align 4
  br label %dec_label_pc_48904

dec_label_pc_488fa:                               ; preds = %dec_label_pc_488bf, %dec_label_pc_48898
  %stack_var_-84.0.ph.reload = load i32, ptr %stack_var_-84.0.ph.reg2mem, align 4
  %26 = call i32 @close(i32 %4)
  %27 = call i32 @close(i32 %13)
  store i32 %stack_var_-84.0.ph.reload, ptr %stack_var_-84.1.reg2mem, align 4
  br label %dec_label_pc_48904

dec_label_pc_48904:                               ; preds = %dec_label_pc_487ec, %dec_label_pc_488f4.thread7, %dec_label_pc_488fa, %dec_label_pc_487bb
  %28 = load i32, ptr @global_var_ec044, align 4
  %29 = icmp eq i32 %28, 5
  %30 = icmp eq i1 %29, false
  br i1 %30, label %dec_label_pc_489cc, label %dec_label_pc_48913

dec_label_pc_48913:                               ; preds = %dec_label_pc_48904
  %stack_var_-84.1.reload = load i32, ptr %stack_var_-84.1.reg2mem, align 4
  %31 = call ptr @malloc(i32 40)
  %32 = ptrtoint ptr %31 to i64
  %33 = icmp eq ptr %31, null
  %34 = icmp eq i1 %33, false
  store i64 0, ptr %indvars.iv10.reg2mem, align 8
  br i1 %34, label %dec_label_pc_4893b, label %dec_label_pc_48928

dec_label_pc_48928:                               ; preds = %dec_label_pc_48913
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4893b:                               ; preds = %dec_label_pc_48913, %dec_label_pc_4893b
  %indvars.iv10.reload = load i64, ptr %indvars.iv10.reg2mem, align 8
  %35 = mul i64 %indvars.iv10.reload, 4
  %36 = add i64 %35, %32
  %37 = inttoptr i64 %36 to ptr
  store i32 0, ptr %37, align 4
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10.reload, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 10
  store i64 %indvars.iv.next11, ptr %indvars.iv10.reg2mem, align 8
  br i1 %exitcond12, label %dec_label_pc_4895f, label %dec_label_pc_4893b

dec_label_pc_4895f:                               ; preds = %dec_label_pc_4893b
  %38 = icmp slt i32 %stack_var_-84.1.reload, 0
  br i1 %38, label %dec_label_pc_489b1, label %dec_label_pc_48965

dec_label_pc_48965:                               ; preds = %dec_label_pc_4895f
  %39 = sext i32 %stack_var_-84.1.reload to i64
  %40 = mul i64 %39, 4
  %41 = add i64 %40, %32
  %42 = inttoptr i64 %41 to ptr
  store i32 1, ptr %42, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_48988

dec_label_pc_48988:                               ; preds = %dec_label_pc_48988, %dec_label_pc_48965
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %43 = mul i64 %indvars.iv.reload, 4
  %44 = add i64 %43, %32
  %45 = inttoptr i64 %44 to ptr
  %46 = load i32, ptr %45, align 4
  call void @printIntLine(i32 %46)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_489c0, label %dec_label_pc_48988

dec_label_pc_489b1:                               ; preds = %dec_label_pc_4895f
  call void @printLine(ptr @global_var_b79e0)
  br label %dec_label_pc_489c0

dec_label_pc_489c0:                               ; preds = %dec_label_pc_48988, %dec_label_pc_489b1
  call void @free(ptr %31)
  br label %dec_label_pc_489cc

dec_label_pc_489cc:                               ; preds = %dec_label_pc_489c0, %dec_label_pc_48904
  %47 = call i64 @__readfsqword(i64 40)
  %48 = icmp eq i64 %0, %47
  br i1 %48, label %dec_label_pc_489e1, label %dec_label_pc_489dc

dec_label_pc_489dc:                               ; preds = %dec_label_pc_489cc
  call void @__stack_chk_fail()
  br label %dec_label_pc_489e1

dec_label_pc_489e1:                               ; preds = %dec_label_pc_489dc, %dec_label_pc_489cc
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

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

