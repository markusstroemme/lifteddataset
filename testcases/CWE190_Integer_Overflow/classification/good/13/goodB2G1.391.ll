@global_var_817d8 = external constant [3 x i8]
@global_var_817f0 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_9ecc:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_817d8, ptr nonnull %stack_var_-18)
  %3 = load i8, ptr %stack_var_-18, align 1
  %4 = icmp eq i8 %3, 127
  br i1 %4, label %dec_label_pc_9f5a, label %dec_label_pc_9f3c

dec_label_pc_9f3c:                                ; preds = %dec_label_pc_9ecc
  %5 = add i8 %3, 1
  store i8 %5, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %5)
  br label %dec_label_pc_9f69

dec_label_pc_9f5a:                                ; preds = %dec_label_pc_9ecc
  call void @printLine(ptr @global_var_817f0)
  br label %dec_label_pc_9f69

dec_label_pc_9f69:                                ; preds = %dec_label_pc_9f5a, %dec_label_pc_9f3c
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_9f7e, label %dec_label_pc_9f79

dec_label_pc_9f79:                                ; preds = %dec_label_pc_9f69
  call void @__stack_chk_fail()
  br label %dec_label_pc_9f7e

dec_label_pc_9f7e:                                ; preds = %dec_label_pc_9f79, %dec_label_pc_9f69
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

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

