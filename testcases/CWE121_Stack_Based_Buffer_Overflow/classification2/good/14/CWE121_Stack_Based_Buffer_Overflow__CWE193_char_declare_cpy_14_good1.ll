@global_var_5eea3 = external constant [21 x i8]
@global_var_78064 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2c2e1:
  %stack_var_-48.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-38 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_78064, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_2c318, label %dec_label_pc_2c307

dec_label_pc_2c307:                               ; preds = %dec_label_pc_2c2e1
  call void @printLine(ptr @global_var_5eea3)
  br label %dec_label_pc_2c327

dec_label_pc_2c318:                               ; preds = %dec_label_pc_2c2e1
  %3 = bitcast ptr %stack_var_-38 to ptr
  store i8 0, ptr %3, align 8
  store ptr %3, ptr %stack_var_-48.0.reg2mem, align 8
  br label %dec_label_pc_2c327

dec_label_pc_2c327:                               ; preds = %dec_label_pc_2c318, %dec_label_pc_2c307
  %stack_var_-48.0.reload = load ptr, ptr %stack_var_-48.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call ptr @strcpy(ptr %stack_var_-48.0.reload, ptr nonnull %4)
  call void @printLine(ptr %stack_var_-48.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2c373, label %dec_label_pc_2c36e

dec_label_pc_2c36e:                               ; preds = %dec_label_pc_2c327
  call void @__stack_chk_fail()
  br label %dec_label_pc_2c373

dec_label_pc_2c373:                               ; preds = %dec_label_pc_2c36e, %dec_label_pc_2c327
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

