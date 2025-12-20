@global_var_5ee3a = external constant [21 x i8]

define i32 @staticReturnsFalse.280() local_unnamed_addr {
dec_label_pc_2b863:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2b8f8:
  %stack_var_-48.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-38 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsFalse.280()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2b932, label %dec_label_pc_2b921

dec_label_pc_2b921:                               ; preds = %dec_label_pc_2b8f8
  call void @printLine(ptr @global_var_5ee3a)
  br label %dec_label_pc_2b941

dec_label_pc_2b932:                               ; preds = %dec_label_pc_2b8f8
  %3 = bitcast ptr %stack_var_-38 to ptr
  store i8 0, ptr %3, align 8
  store ptr %3, ptr %stack_var_-48.0.reg2mem, align 8
  br label %dec_label_pc_2b941

dec_label_pc_2b941:                               ; preds = %dec_label_pc_2b932, %dec_label_pc_2b921
  %stack_var_-48.0.reload = load ptr, ptr %stack_var_-48.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call ptr @strcpy(ptr %stack_var_-48.0.reload, ptr nonnull %4)
  call void @printLine(ptr %stack_var_-48.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2b98d, label %dec_label_pc_2b988

dec_label_pc_2b988:                               ; preds = %dec_label_pc_2b941
  call void @__stack_chk_fail()
  br label %dec_label_pc_2b98d

dec_label_pc_2b98d:                               ; preds = %dec_label_pc_2b988, %dec_label_pc_2b941
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

