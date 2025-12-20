@global_var_8f4b0 = external constant [10 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c3058 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_45af8:
  %stack_var_-72.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_c3058, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_45c1a, label %dec_label_pc_45b28

dec_label_pc_45b28:                               ; preds = %dec_label_pc_45af8
  %3 = call i32 @socket(i32 2, i32 1, i32 6)
  %4 = icmp eq i32 %3, -1
  store i32 0, ptr %stack_var_-72.1.ph.reg2mem, align 4
  br i1 %4, label %dec_label_pc_45bfd, label %dec_label_pc_45b50

dec_label_pc_45b50:                               ; preds = %dec_label_pc_45b28
  %5 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %6 = call i32 @inet_addr(ptr @global_var_8f4b0)
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @connect(i32 %3, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %10, label %dec_label_pc_45bf3, label %dec_label_pc_45ba7

dec_label_pc_45ba7:                               ; preds = %dec_label_pc_45b50
  %11 = call i32 @recv(i32 %3, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %12 = add i32 %11, 1
  %13 = icmp ult i32 %12, 2
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %13, label %dec_label_pc_45bf3, label %dec_label_pc_45bce

dec_label_pc_45bce:                               ; preds = %dec_label_pc_45ba7
  %14 = ptrtoint ptr %stack_var_-8 to i64
  %15 = sext i32 %11 to i64
  %16 = add i64 %14, -22
  %17 = add i64 %16, %15
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  %19 = bitcast ptr %stack_var_-30 to ptr
  %20 = call i32 @atoi(ptr nonnull %19)
  store i32 %20, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_45bf3

dec_label_pc_45bf3:                               ; preds = %dec_label_pc_45b50, %dec_label_pc_45bce, %dec_label_pc_45ba7
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %21 = call i32 @close(i32 %3)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.1.ph.reg2mem, align 4
  br label %dec_label_pc_45bfd

dec_label_pc_45bfd:                               ; preds = %dec_label_pc_45b28, %dec_label_pc_45bf3
  %.pr = load i32, ptr @global_var_c3058, align 4
  %22 = icmp eq i32 %.pr, 0
  br i1 %22, label %dec_label_pc_45c1a, label %dec_label_pc_45c07

dec_label_pc_45c07:                               ; preds = %dec_label_pc_45bfd
  %stack_var_-72.1.ph.reload = load i32, ptr %stack_var_-72.1.ph.reg2mem, align 4
  %23 = mul i32 %stack_var_-72.1.ph.reload, %stack_var_-72.1.ph.reload
  call void @printIntLine(i32 %23)
  br label %dec_label_pc_45c1a

dec_label_pc_45c1a:                               ; preds = %dec_label_pc_45af8, %dec_label_pc_45c07, %dec_label_pc_45bfd
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  br i1 %25, label %dec_label_pc_45c2f, label %dec_label_pc_45c2a

dec_label_pc_45c2a:                               ; preds = %dec_label_pc_45c1a
  call void @__stack_chk_fail()
  br label %dec_label_pc_45c2f

dec_label_pc_45c2f:                               ; preds = %dec_label_pc_45c2a, %dec_label_pc_45c1a
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

