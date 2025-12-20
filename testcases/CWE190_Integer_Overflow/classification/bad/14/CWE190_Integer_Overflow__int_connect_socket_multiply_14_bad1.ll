@global_var_8ec90 = external constant [10 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c3074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3f474:
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_c3074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_3f59d, label %dec_label_pc_3f4a5

dec_label_pc_3f4a5:                               ; preds = %dec_label_pc_3f474
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %dec_label_pc_3f59d, label %dec_label_pc_3f4cd

dec_label_pc_3f4cd:                               ; preds = %dec_label_pc_3f4a5
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i32 @inet_addr(ptr @global_var_8ec90)
  %8 = call i16 @htons(i16 27015)
  %9 = bitcast ptr %stack_var_-56 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_3f57a, label %dec_label_pc_3f524

dec_label_pc_3f524:                               ; preds = %dec_label_pc_3f4cd
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_3f57a, label %dec_label_pc_3f54b

dec_label_pc_3f54b:                               ; preds = %dec_label_pc_3f524
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_3f57a

dec_label_pc_3f57a:                               ; preds = %dec_label_pc_3f524, %dec_label_pc_3f54b, %dec_label_pc_3f4cd
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %22 = call i32 @close(i32 %4)
  %23 = load i32, ptr @global_var_c3074, align 4
  %24 = icmp eq i32 %23, 5
  %25 = icmp eq i1 %24, false
  %26 = icmp slt i32 %stack_var_-72.0.ph.reload, 1
  %or.cond4 = or i1 %26, %25
  br i1 %or.cond4, label %dec_label_pc_3f59d, label %dec_label_pc_3f58b

dec_label_pc_3f58b:                               ; preds = %dec_label_pc_3f57a
  %27 = mul i32 %stack_var_-72.0.ph.reload, 2
  call void @printIntLine(i32 %27)
  br label %dec_label_pc_3f59d

dec_label_pc_3f59d:                               ; preds = %dec_label_pc_3f4a5, %dec_label_pc_3f474, %dec_label_pc_3f58b, %dec_label_pc_3f57a
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %0, %28
  br i1 %29, label %dec_label_pc_3f5b2, label %dec_label_pc_3f5ad

dec_label_pc_3f5ad:                               ; preds = %dec_label_pc_3f59d
  call void @__stack_chk_fail()
  br label %dec_label_pc_3f5b2

dec_label_pc_3f5b2:                               ; preds = %dec_label_pc_3f5ad, %dec_label_pc_3f59d
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
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

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

