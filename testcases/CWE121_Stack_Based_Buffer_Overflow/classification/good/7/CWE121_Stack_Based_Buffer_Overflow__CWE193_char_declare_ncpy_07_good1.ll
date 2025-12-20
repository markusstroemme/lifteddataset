@staticFive = external local_unnamed_addr global i32
@global_var_5f1a5 = external constant [21 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3a91f:
  %stack_var_-48.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-38 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @staticFive, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_3a956, label %dec_label_pc_3a945

dec_label_pc_3a945:                               ; preds = %dec_label_pc_3a91f
  call void @printLine(ptr @global_var_5f1a5)
  br label %dec_label_pc_3a965

dec_label_pc_3a956:                               ; preds = %dec_label_pc_3a91f
  %3 = bitcast ptr %stack_var_-38 to ptr
  store i8 0, ptr %3, align 8
  store ptr %3, ptr %stack_var_-48.0.reg2mem, align 8
  br label %dec_label_pc_3a965

dec_label_pc_3a965:                               ; preds = %dec_label_pc_3a956, %dec_label_pc_3a945
  %stack_var_-48.0.reload = load ptr, ptr %stack_var_-48.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call i32 @strlen(ptr nonnull %4)
  %6 = add i32 %5, 1
  %7 = call ptr @strncpy(ptr %stack_var_-48.0.reload, ptr nonnull %4, i32 %6)
  call void @printLine(ptr %stack_var_-48.0.reload)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_3a9c1, label %dec_label_pc_3a9bc

dec_label_pc_3a9bc:                               ; preds = %dec_label_pc_3a965
  call void @__stack_chk_fail()
  br label %dec_label_pc_3a9c1

dec_label_pc_3a9c1:                               ; preds = %dec_label_pc_3a9bc, %dec_label_pc_3a965
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

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

