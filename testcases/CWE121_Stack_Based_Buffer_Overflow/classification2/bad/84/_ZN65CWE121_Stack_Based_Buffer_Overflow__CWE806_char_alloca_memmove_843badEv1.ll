@global_var_fff = external global ptr
@0 = external global i32
@global_var_1000 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_67c24:
  %0 = ptrtoint ptr %result to i64
  %1 = ptrtoint ptr %arg2 to i64
  store i64 %1, ptr %result, align 8
  %2 = call ptr @memset(ptr %result, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_67c6e:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %result to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %result, i32 %2)
  %4 = bitcast ptr %stack_var_-72 to ptr
  call void @printLine(ptr nonnull %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_67d13, label %dec_label_pc_67d0e

dec_label_pc_67d0e:                               ; preds = %dec_label_pc_67c6e
  call void @__stack_chk_fail()
  br label %dec_label_pc_67d13

dec_label_pc_67d13:                               ; preds = %dec_label_pc_67d0e, %dec_label_pc_67c6e
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_67e07:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_67e53

dec_label_pc_67e53:                               ; preds = %dec_label_pc_67e53, %dec_label_pc_67e07
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_67e6a, label %dec_label_pc_67e53

dec_label_pc_67e6a:                               ; preds = %dec_label_pc_67e53
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
  br i1 %9, label %dec_label_pc_67f0e, label %dec_label_pc_67ed8

dec_label_pc_67ed8:                               ; preds = %dec_label_pc_67e6a
  call void @anon1(ptr %8)
  %10 = call i64 @_ZdlPvm(ptr %8, i64 8)
  br label %dec_label_pc_67f0e

dec_label_pc_67f0e:                               ; preds = %dec_label_pc_67ed8, %dec_label_pc_67e6a
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_67f23, label %dec_label_pc_67f1e

dec_label_pc_67f1e:                               ; preds = %dec_label_pc_67f0e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_67f23

dec_label_pc_67f23:                               ; preds = %dec_label_pc_67f1e, %dec_label_pc_67f0e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

