@global_var_82008 = external constant [16 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_12fe6:
  %stack_var_-40.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-30 to ptr
  store i64 0, ptr %stack_var_-30, align 8
  %2 = load ptr, ptr @global_var_b8080, align 8
  %3 = call ptr @fgets(ptr nonnull %1, i32 14, ptr %2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_13029, label %dec_label_pc_13018

dec_label_pc_13018:                               ; preds = %dec_label_pc_12fe6
  %5 = call i32 @atoi(ptr nonnull %1)
  store i32 %5, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_13068

dec_label_pc_13029:                               ; preds = %dec_label_pc_12fe6
  call void @printLine(ptr @global_var_82008)
  store i32 0, ptr %stack_var_-40.0.reg2mem, align 4
  br label %dec_label_pc_13068

dec_label_pc_13068:                               ; preds = %dec_label_pc_13029, %dec_label_pc_13018
  %stack_var_-40.0.reload = load i32, ptr %stack_var_-40.0.reg2mem, align 4
  %6 = mul i32 %stack_var_-40.0.reload, %stack_var_-40.0.reload
  call void @printIntLine(i32 %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_1307d, label %dec_label_pc_13078

dec_label_pc_13078:                               ; preds = %dec_label_pc_13068
  call void @__stack_chk_fail()
  br label %dec_label_pc_1307d

dec_label_pc_1307d:                               ; preds = %dec_label_pc_13078, %dec_label_pc_13068
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

