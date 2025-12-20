@global_var_867ce = external constant [16 x i8]
@global_var_8ca7c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_35143:
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_351a8, label %dec_label_pc_35197

dec_label_pc_35197:                               ; preds = %dec_label_pc_35143
  %5 = call i32 @atoi(ptr nonnull %2)
  br label %dec_label_pc_351b7

dec_label_pc_351a8:                               ; preds = %dec_label_pc_35143
  call void @printLine(ptr @global_var_867ce)
  br label %dec_label_pc_351b7

dec_label_pc_351b7:                               ; preds = %dec_label_pc_351a8, %dec_label_pc_35197
  %6 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_351de, label %dec_label_pc_351d9

dec_label_pc_351d9:                               ; preds = %dec_label_pc_351b7
  call void @__stack_chk_fail()
  br label %dec_label_pc_351de

dec_label_pc_351de:                               ; preds = %dec_label_pc_351d9, %dec_label_pc_351b7
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_352ee:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  call void @printIntLine(i32 %5)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

