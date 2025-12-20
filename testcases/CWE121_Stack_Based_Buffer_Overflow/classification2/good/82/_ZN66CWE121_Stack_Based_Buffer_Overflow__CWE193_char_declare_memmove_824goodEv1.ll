@global_var_77be0 = external global i64
@0 = external global i32
@global_var_776c0 = external global %vtable_776c0_type

define i64 @anon0() local_unnamed_addr {
dec_label_pc_4dd54:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znwm(i64 8)
  %2 = inttoptr i64 %1 to ptr
  call void @anon1(ptr %2)
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %dec_label_pc_4ddc8, label %dec_label_pc_4ddbb

dec_label_pc_4ddbb:                               ; preds = %dec_label_pc_4dd54
  %4 = call i64 @_ZdlPvm(ptr %2, i64 8)
  br label %dec_label_pc_4ddc8

dec_label_pc_4ddc8:                               ; preds = %dec_label_pc_4ddbb, %dec_label_pc_4dd54
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_4dddd, label %dec_label_pc_4ddd8

dec_label_pc_4ddd8:                               ; preds = %dec_label_pc_4ddc8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4dddd

dec_label_pc_4dddd:                               ; preds = %dec_label_pc_4ddd8, %dec_label_pc_4ddc8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @anon2(ptr %result) local_unnamed_addr {
dec_label_pc_4ddf4:
  store i64 ptrtoint (ptr @global_var_77be0 to i64), ptr %result, align 8
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_4de40:
  call void @anon2(ptr %result)
  store i64 ptrtoint (ptr @global_var_776c0 to i64), ptr %result, align 8
  ret void
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

