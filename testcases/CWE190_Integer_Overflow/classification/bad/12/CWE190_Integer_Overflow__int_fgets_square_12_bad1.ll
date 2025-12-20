@global_var_81e70 = external constant [16 x i8]
@global_var_81e80 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_12176:
  %stack_var_-44.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 2, ptr %stack_var_-44.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_12201, label %dec_label_pc_121a6

dec_label_pc_121a6:                               ; preds = %dec_label_pc_12176
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_121e9, label %dec_label_pc_121d8

dec_label_pc_121d8:                               ; preds = %dec_label_pc_121a6
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_12201

dec_label_pc_121e9:                               ; preds = %dec_label_pc_121a6
  call void @printLine(ptr @global_var_81e70)
  store i32 0, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_12201

dec_label_pc_12201:                               ; preds = %dec_label_pc_12176, %dec_label_pc_121e9, %dec_label_pc_121d8
  %stack_var_-44.0.reload = load i32, ptr %stack_var_-44.0.reg2mem, align 4
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_12224, label %dec_label_pc_1220f

dec_label_pc_1220f:                               ; preds = %dec_label_pc_12201
  %10 = mul i32 %stack_var_-44.0.reload, %stack_var_-44.0.reload
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_12264

dec_label_pc_12224:                               ; preds = %dec_label_pc_12201
  %stack_var_-44.0.off = add i32 %stack_var_-44.0.reload, 46339
  %11 = icmp ugt i32 %stack_var_-44.0.off, 92678
  br i1 %11, label %dec_label_pc_12255, label %dec_label_pc_1223f

dec_label_pc_1223f:                               ; preds = %dec_label_pc_12224
  %12 = mul i32 %stack_var_-44.0.reload, %stack_var_-44.0.reload
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_12264

dec_label_pc_12255:                               ; preds = %dec_label_pc_12224
  call void @printLine(ptr @global_var_81e80)
  br label %dec_label_pc_12264

dec_label_pc_12264:                               ; preds = %dec_label_pc_12255, %dec_label_pc_1223f, %dec_label_pc_1220f
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_12279, label %dec_label_pc_12274

dec_label_pc_12274:                               ; preds = %dec_label_pc_12264
  call void @__stack_chk_fail()
  br label %dec_label_pc_12279

dec_label_pc_12279:                               ; preds = %dec_label_pc_12274, %dec_label_pc_12264
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6ecb9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

