@global_var_1000 = external global ptr
@global_var_9e720 = external global i64
@0 = external global i32
@global_var_fff = external global i32
@global_var_9e278 = external global %vtable_9e278_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5fa3b:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5fa85

dec_label_pc_5fa85:                               ; preds = %dec_label_pc_5fa85, %dec_label_pc_5fa3b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_5fa9c, label %dec_label_pc_5fa85

dec_label_pc_5fa9c:                               ; preds = %dec_label_pc_5fa85
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_5fb07

dec_label_pc_5fb07:                               ; preds = %dec_label_pc_5fb07, %dec_label_pc_5fa9c
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_5fb1e, label %dec_label_pc_5fb07

dec_label_pc_5fb1e:                               ; preds = %dec_label_pc_5fb07
  %8 = and i64 %5, -16
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 16
  %10 = call i64 @_Znwm(i64 8)
  %11 = inttoptr i64 %10 to ptr
  call void @anon1(ptr %11)
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %dec_label_pc_5fbb3, label %dec_label_pc_5fba6

dec_label_pc_5fba6:                               ; preds = %dec_label_pc_5fb1e
  %13 = call i64 @_ZdlPvm(ptr %11, i64 8)
  br label %dec_label_pc_5fbb3

dec_label_pc_5fbb3:                               ; preds = %dec_label_pc_5fba6, %dec_label_pc_5fb1e
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_5fbc8, label %dec_label_pc_5fbc3

dec_label_pc_5fbc3:                               ; preds = %dec_label_pc_5fbb3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5fbc8

dec_label_pc_5fbc8:                               ; preds = %dec_label_pc_5fbc3, %dec_label_pc_5fbb3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_5fd72:
  store i64 ptrtoint (ptr @global_var_9e720 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_5fd90:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_9e278 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

