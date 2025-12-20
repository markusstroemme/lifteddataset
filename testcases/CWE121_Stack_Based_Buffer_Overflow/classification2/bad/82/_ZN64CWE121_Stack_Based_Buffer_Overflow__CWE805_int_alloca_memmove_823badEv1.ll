@global_var_fff = external global ptr
@global_var_e5988 = external global i64
@0 = external global i32
@global_var_1000 = external global i32
@global_var_e51a0 = external global %vtable_e51a0_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_905ce:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_9061a

dec_label_pc_9061a:                               ; preds = %dec_label_pc_9061a, %dec_label_pc_905ce
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_90631, label %dec_label_pc_9061a

dec_label_pc_90631:                               ; preds = %dec_label_pc_9061a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_9069e

dec_label_pc_9069e:                               ; preds = %dec_label_pc_9069e, %dec_label_pc_90631
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_906b5, label %dec_label_pc_9069e

dec_label_pc_906b5:                               ; preds = %dec_label_pc_9069e
  %7 = call i64 @_Znwm(i64 8)
  %8 = inttoptr i64 %7 to ptr
  call void @anon1(ptr %8)
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %dec_label_pc_90743, label %dec_label_pc_90736

dec_label_pc_90736:                               ; preds = %dec_label_pc_906b5
  %10 = call i64 @_ZdlPvm(ptr %8, i64 8)
  br label %dec_label_pc_90743

dec_label_pc_90743:                               ; preds = %dec_label_pc_90736, %dec_label_pc_906b5
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_90758, label %dec_label_pc_90753

dec_label_pc_90753:                               ; preds = %dec_label_pc_90743
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_90758

dec_label_pc_90758:                               ; preds = %dec_label_pc_90753, %dec_label_pc_90743
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_908fe:
  store i64 ptrtoint (ptr @global_var_e5988 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_9091c:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_e51a0 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

