@global_var_5f1f9 = external constant [21 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3b0e7:
  %stack_var_-48.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-38 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_3b121, label %dec_label_pc_3b110

dec_label_pc_3b110:                               ; preds = %dec_label_pc_3b0e7
  call void @printLine(ptr @global_var_5f1f9)
  br label %dec_label_pc_3b130

dec_label_pc_3b121:                               ; preds = %dec_label_pc_3b0e7
  %3 = bitcast ptr %stack_var_-38 to ptr
  store i8 0, ptr %3, align 8
  store ptr %3, ptr %stack_var_-48.0.reg2mem, align 8
  br label %dec_label_pc_3b130

dec_label_pc_3b130:                               ; preds = %dec_label_pc_3b121, %dec_label_pc_3b110
  %stack_var_-48.0.reload = load ptr, ptr %stack_var_-48.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call i32 @strlen(ptr nonnull %4)
  %6 = add i32 %5, 1
  %7 = call ptr @strncpy(ptr %stack_var_-48.0.reload, ptr nonnull %4, i32 %6)
  call void @printLine(ptr %stack_var_-48.0.reload)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_3b18c, label %dec_label_pc_3b187

dec_label_pc_3b187:                               ; preds = %dec_label_pc_3b130
  call void @__stack_chk_fail()
  br label %dec_label_pc_3b18c

dec_label_pc_3b18c:                               ; preds = %dec_label_pc_3b187, %dec_label_pc_3b130
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_4f492:
  ret i32 0
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

