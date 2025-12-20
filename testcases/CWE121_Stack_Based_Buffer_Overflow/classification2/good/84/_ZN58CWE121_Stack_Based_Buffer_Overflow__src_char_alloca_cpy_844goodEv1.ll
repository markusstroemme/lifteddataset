@0 = external global i32
@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_59d4e:
  %0 = ptrtoint ptr %result to i64
  %1 = ptrtoint ptr %arg2 to i64
  store i64 %1, ptr %result, align 8
  %2 = call ptr @memset(ptr %result, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_59d98:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %stack_var_-72 to ptr
  %2 = bitcast ptr %result to ptr
  %3 = call ptr @strcpy(ptr nonnull %1, ptr %2)
  call void @printLine(ptr nonnull %1)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_59e27, label %dec_label_pc_59e22

dec_label_pc_59e22:                               ; preds = %dec_label_pc_59d98
  call void @__stack_chk_fail()
  br label %dec_label_pc_59e27

dec_label_pc_59e27:                               ; preds = %dec_label_pc_59e22, %dec_label_pc_59d98
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_59f4e:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_59f9a

dec_label_pc_59f9a:                               ; preds = %dec_label_pc_59f9a, %dec_label_pc_59f4e
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_59fb1, label %dec_label_pc_59f9a

dec_label_pc_59fb1:                               ; preds = %dec_label_pc_59f9a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %stack_var_-56, align 8
  %7 = call i64 @_Znwm(i64 8)
  %8 = inttoptr i64 %7 to ptr
  call void @anon0(ptr %8, ptr %6)
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %dec_label_pc_5a055, label %dec_label_pc_5a01f

dec_label_pc_5a01f:                               ; preds = %dec_label_pc_59fb1
  call void @anon1(ptr %8)
  %10 = call i64 @_ZdlPvm(ptr %8, i64 8)
  br label %dec_label_pc_5a055

dec_label_pc_5a055:                               ; preds = %dec_label_pc_5a01f, %dec_label_pc_59fb1
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_5a06a, label %dec_label_pc_5a065

dec_label_pc_5a065:                               ; preds = %dec_label_pc_5a055
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5a06a

dec_label_pc_5a06a:                               ; preds = %dec_label_pc_5a065, %dec_label_pc_5a055
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

