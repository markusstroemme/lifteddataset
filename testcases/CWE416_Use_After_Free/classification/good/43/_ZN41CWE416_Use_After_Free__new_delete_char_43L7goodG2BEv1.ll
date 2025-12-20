@global_var_4a95b = external constant [6 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_2ee87:
  %0 = call i64 @_Znwm(i64 1)
  %1 = bitcast ptr %arg1 to ptr
  store i64 %0, ptr %1, align 8
  store i8 65, ptr inttoptr (i64 1 to ptr), align 1
  ret i64 1
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_2eeb8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-24, align 8
  %1 = call i64 @anon0(ptr nonnull %stack_var_-24)
  %2 = load ptr, ptr %stack_var_-24, align 8
  %3 = load i8, ptr %2, align 1
  call void @printHexCharLine(i8 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_2ef0d, label %dec_label_pc_2ef08

dec_label_pc_2ef08:                               ; preds = %dec_label_pc_2eeb8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2ef0d

dec_label_pc_2ef0d:                               ; preds = %dec_label_pc_2ef08, %dec_label_pc_2eeb8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3b981:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a95b, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

