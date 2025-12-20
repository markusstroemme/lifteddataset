@global_var_fff = external global ptr
@global_var_e5858 = external global i64
@0 = external global i32
@global_var_1000 = external global i32
@global_var_e50e0 = external global %vtable_e50e0_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8cac2:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_8cb0e

dec_label_pc_8cb0e:                               ; preds = %dec_label_pc_8cb0e, %dec_label_pc_8cac2
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_8cb25, label %dec_label_pc_8cb0e

dec_label_pc_8cb25:                               ; preds = %dec_label_pc_8cb0e
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_8cb92

dec_label_pc_8cb92:                               ; preds = %dec_label_pc_8cb92, %dec_label_pc_8cb25
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_8cba9, label %dec_label_pc_8cb92

dec_label_pc_8cba9:                               ; preds = %dec_label_pc_8cb92
  %7 = call i64 @_Znwm(i64 8)
  %8 = inttoptr i64 %7 to ptr
  call void @anon1(ptr %8)
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %dec_label_pc_8cc37, label %dec_label_pc_8cc2a

dec_label_pc_8cc2a:                               ; preds = %dec_label_pc_8cba9
  %10 = call i64 @_ZdlPvm(ptr %8, i64 8)
  br label %dec_label_pc_8cc37

dec_label_pc_8cc37:                               ; preds = %dec_label_pc_8cc2a, %dec_label_pc_8cba9
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_8cc4c, label %dec_label_pc_8cc47

dec_label_pc_8cc47:                               ; preds = %dec_label_pc_8cc37
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8cc4c

dec_label_pc_8cc4c:                               ; preds = %dec_label_pc_8cc47, %dec_label_pc_8cc37
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_8cdf2:
  store i64 ptrtoint (ptr @global_var_e5858 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_8ce10:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_e50e0 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

