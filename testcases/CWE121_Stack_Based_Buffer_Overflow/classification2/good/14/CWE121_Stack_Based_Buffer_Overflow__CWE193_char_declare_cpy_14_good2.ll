@global_var_78064 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2c375:
  %stack_var_-48.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-38 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_78064, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_2c3aa, label %dec_label_pc_2c39b

dec_label_pc_2c39b:                               ; preds = %dec_label_pc_2c375
  %4 = bitcast ptr %stack_var_-38 to ptr
  store i8 0, ptr %4, align 8
  store ptr %4, ptr %stack_var_-48.0.reg2mem, align 8
  br label %dec_label_pc_2c3aa

dec_label_pc_2c3aa:                               ; preds = %dec_label_pc_2c39b, %dec_label_pc_2c375
  %stack_var_-48.0.reload = load ptr, ptr %stack_var_-48.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call ptr @strcpy(ptr %stack_var_-48.0.reload, ptr nonnull %5)
  call void @printLine(ptr %stack_var_-48.0.reload)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_2c3f6, label %dec_label_pc_2c3f1

dec_label_pc_2c3f1:                               ; preds = %dec_label_pc_2c3aa
  call void @__stack_chk_fail()
  br label %dec_label_pc_2c3f6

dec_label_pc_2c3f6:                               ; preds = %dec_label_pc_2c3f1, %dec_label_pc_2c3aa
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

