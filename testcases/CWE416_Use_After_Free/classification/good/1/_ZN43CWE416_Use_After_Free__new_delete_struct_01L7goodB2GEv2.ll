define i64 @anon0() local_unnamed_addr {
dec_label_pc_38cf1:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  store i32 1, ptr %1, align 4
  %2 = add i64 %0, 4
  %3 = inttoptr i64 %2 to ptr
  store i32 2, ptr %3, align 4
  %4 = icmp eq i64 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_38d3e, label %dec_label_pc_38d31

dec_label_pc_38d31:                               ; preds = %dec_label_pc_38cf1
  %5 = inttoptr i64 %0 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 8)
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_38d3e

dec_label_pc_38d3e:                               ; preds = %dec_label_pc_38d31, %dec_label_pc_38cf1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

