@global_var_88f98 = external constant [4 x i8]
@global_var_88fb8 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_4f102:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_88f98, ptr nonnull %stack_var_-20)
  %3 = load i16, ptr %stack_var_-20, align 2
  %4 = icmp eq i16 %3, 32767
  br i1 %4, label %dec_label_pc_4f194, label %dec_label_pc_4f174

dec_label_pc_4f174:                               ; preds = %dec_label_pc_4f102
  %5 = add i16 %3, 1
  store i16 %5, ptr %stack_var_-20, align 2
  %6 = sext i16 %5 to i32
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_4f1a3

dec_label_pc_4f194:                               ; preds = %dec_label_pc_4f102
  call void @printLine(ptr @global_var_88fb8)
  br label %dec_label_pc_4f1a3

dec_label_pc_4f1a3:                               ; preds = %dec_label_pc_4f194, %dec_label_pc_4f174
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_4f1b8, label %dec_label_pc_4f1b3

dec_label_pc_4f1b3:                               ; preds = %dec_label_pc_4f1a3
  call void @__stack_chk_fail()
  br label %dec_label_pc_4f1b8

dec_label_pc_4f1b8:                               ; preds = %dec_label_pc_4f1b3, %dec_label_pc_4f1a3
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
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

