@global_var_bc407 = external constant [10 x i8]
@global_var_ee4e8 = external global i64
@0 = external global i32
@global_var_edf10 = external global %vtable_edf10_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_7a244:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-46 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %dec_label_pc_7a341, label %dec_label_pc_7a28f

dec_label_pc_7a28f:                               ; preds = %dec_label_pc_7a244
  %2 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %3 = call i32 @inet_addr(ptr @global_var_bc407)
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_7a337, label %dec_label_pc_7a2eb

dec_label_pc_7a2eb:                               ; preds = %dec_label_pc_7a28f
  %10 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-46, i32 13, i32 0)
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %dec_label_pc_7a337, label %dec_label_pc_7a312

dec_label_pc_7a312:                               ; preds = %dec_label_pc_7a2eb
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %10 to i64
  %15 = add i64 %13, -38
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-46 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  br label %dec_label_pc_7a337

dec_label_pc_7a337:                               ; preds = %dec_label_pc_7a2eb, %dec_label_pc_7a312, %dec_label_pc_7a28f
  %20 = call i32 @close(i32 %1)
  br label %dec_label_pc_7a341

dec_label_pc_7a341:                               ; preds = %dec_label_pc_7a244, %dec_label_pc_7a337
  %21 = call i64 @_Znwm(i64 8)
  %22 = inttoptr i64 %21 to ptr
  call void @anon1(ptr %22)
  %23 = icmp eq i64 %21, 0
  br i1 %23, label %dec_label_pc_7a388, label %dec_label_pc_7a37b

dec_label_pc_7a37b:                               ; preds = %dec_label_pc_7a341
  %24 = call i64 @_ZdlPvm(ptr %22, i64 8)
  br label %dec_label_pc_7a388

dec_label_pc_7a388:                               ; preds = %dec_label_pc_7a37b, %dec_label_pc_7a341
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_7a39d, label %dec_label_pc_7a398

dec_label_pc_7a398:                               ; preds = %dec_label_pc_7a388
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7a39d

dec_label_pc_7a39d:                               ; preds = %dec_label_pc_7a398, %dec_label_pc_7a388
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_7a580:
  store i64 ptrtoint (ptr @global_var_ee4e8 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_7a59e:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_edf10 to i64), ptr %result, align 8
  ret void
}

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

