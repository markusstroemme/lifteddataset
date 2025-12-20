@global_var_fff = external global ptr
@global_var_b3710 = external global i64
@0 = external global i32
@global_var_1000 = external global i32
@global_var_b3280 = external global %vtable_b3280_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_64f53:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_64f9d

dec_label_pc_64f9d:                               ; preds = %dec_label_pc_64f9d, %dec_label_pc_64f53
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_64fb4, label %dec_label_pc_64f9d

dec_label_pc_64fb4:                               ; preds = %dec_label_pc_64f9d
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  store i64 %5, ptr %stack_var_-56, align 8
  %6 = inttoptr i64 %5 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 49)
  %8 = add i64 %5, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = call i64 @_Znwm(i64 8)
  %11 = inttoptr i64 %10 to ptr
  call void @anon1(ptr %11)
  %12 = icmp eq i64 %10, 0
  br i1 %12, label %dec_label_pc_65063, label %dec_label_pc_65056

dec_label_pc_65056:                               ; preds = %dec_label_pc_64fb4
  %13 = call i64 @_ZdlPvm(ptr %11, i64 8)
  br label %dec_label_pc_65063

dec_label_pc_65063:                               ; preds = %dec_label_pc_65056, %dec_label_pc_64fb4
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_65078, label %dec_label_pc_65073

dec_label_pc_65073:                               ; preds = %dec_label_pc_65063
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_65078

dec_label_pc_65078:                               ; preds = %dec_label_pc_65073, %dec_label_pc_65063
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_6508e:
  store i64 ptrtoint (ptr @global_var_b3710 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_650da:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_b3280 to i64), ptr %result, align 8
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

