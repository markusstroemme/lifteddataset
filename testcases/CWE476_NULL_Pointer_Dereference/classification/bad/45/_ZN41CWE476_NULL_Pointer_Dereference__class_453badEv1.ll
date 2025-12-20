@global_var_6d250 = external local_unnamed_addr global i64
@global_var_4a578 = external constant [4 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_23f74:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i64, ptr @global_var_6d250, align 8
  %1 = inttoptr i64 %0 to ptr
  %2 = load i32, ptr %1, align 4
  call void @printIntLine(i32 %2)
  %3 = icmp eq i64 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_23fae, label %dec_label_pc_23fa1

dec_label_pc_23fa1:                               ; preds = %dec_label_pc_23f74
  %4 = inttoptr i64 %0 to ptr
  %5 = call i64 @_ZdlPvm(ptr %4, i64 8)
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_23fae

dec_label_pc_23fae:                               ; preds = %dec_label_pc_23fa1, %dec_label_pc_23f74
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_23fb1:
  store i64 0, ptr @global_var_6d250, align 8
  %0 = call i64 @anon0()
  ret i64 %0
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

