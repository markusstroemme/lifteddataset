@global_var_ee808 = external global i64
@0 = external global i32
@global_var_ee150 = external global %vtable_ee150_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_864ce:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-46 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_86613, label %dec_label_pc_86520

dec_label_pc_86520:                               ; preds = %dec_label_pc_864ce
  %3 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_86603.thread4, label %dec_label_pc_86571

dec_label_pc_86571:                               ; preds = %dec_label_pc_86520
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_86603.thread4, label %dec_label_pc_8658a

dec_label_pc_8658a:                               ; preds = %dec_label_pc_86571
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_86603.thread4, label %dec_label_pc_865a7

dec_label_pc_865a7:                               ; preds = %dec_label_pc_8658a
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-46, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %dec_label_pc_86609, label %dec_label_pc_865ce

dec_label_pc_865ce:                               ; preds = %dec_label_pc_865a7
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -38
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-46 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  br label %dec_label_pc_86609

dec_label_pc_86603.thread4:                       ; preds = %dec_label_pc_8658a, %dec_label_pc_86571, %dec_label_pc_86520
  %26 = call i32 @close(i32 %1)
  br label %dec_label_pc_86613

dec_label_pc_86609:                               ; preds = %dec_label_pc_865ce, %dec_label_pc_865a7
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  br label %dec_label_pc_86613

dec_label_pc_86613:                               ; preds = %dec_label_pc_864ce, %dec_label_pc_86603.thread4, %dec_label_pc_86609
  %29 = call i64 @_Znwm(i64 8)
  %30 = inttoptr i64 %29 to ptr
  call void @anon1(ptr %30)
  %31 = icmp eq i64 %29, 0
  br i1 %31, label %dec_label_pc_8665a, label %dec_label_pc_8664d

dec_label_pc_8664d:                               ; preds = %dec_label_pc_86613
  %32 = call i64 @_ZdlPvm(ptr %30, i64 8)
  br label %dec_label_pc_8665a

dec_label_pc_8665a:                               ; preds = %dec_label_pc_8664d, %dec_label_pc_86613
  %33 = call i64 @__readfsqword(i64 40)
  %34 = icmp eq i64 %0, %33
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %34, label %dec_label_pc_8666f, label %dec_label_pc_8666a

dec_label_pc_8666a:                               ; preds = %dec_label_pc_8665a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8666f

dec_label_pc_8666f:                               ; preds = %dec_label_pc_8666a, %dec_label_pc_8665a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_8689a:
  store i64 ptrtoint (ptr @global_var_ee808 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_868b8:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_ee150 to i64), ptr %result, align 8
  ret void
}

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

