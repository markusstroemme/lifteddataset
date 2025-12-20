@global_var_ee8d0 = external global i64
@global_var_ee1e0 = external global %vtable_ee1e0_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_89848:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i32 @rand()
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i64 @_Znwm(i64 8)
  %5 = inttoptr i64 %4 to ptr
  call void @anon1(ptr %5)
  %6 = icmp eq i64 %4, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_898ec, label %dec_label_pc_898df

dec_label_pc_898df:                               ; preds = %dec_label_pc_89848
  %7 = call i64 @_ZdlPvm(ptr %5, i64 8)
  store i64 %7, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_898ec

dec_label_pc_898ec:                               ; preds = %dec_label_pc_898df, %dec_label_pc_89848
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_89a1c:
  store i64 ptrtoint (ptr @global_var_ee8d0 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_89a3a:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_ee1e0 to i64), ptr %result, align 8
  ret void
}

declare i32 @rand() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

