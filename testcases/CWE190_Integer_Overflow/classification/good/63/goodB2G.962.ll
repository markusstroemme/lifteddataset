@global_var_81d19 = external constant [3 x i8]
@global_var_81d20 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_c6dd:
  %stack_var_-17 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-17, align 1
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_81d19, ptr nonnull %stack_var_-17)
  call void @anon0(ptr nonnull %stack_var_-17)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_c73f, label %dec_label_pc_c73a

dec_label_pc_c73a:                                ; preds = %dec_label_pc_c6dd
  call void @__stack_chk_fail()
  br label %dec_label_pc_c73f

dec_label_pc_c73f:                                ; preds = %dec_label_pc_c73a, %dec_label_pc_c6dd
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_c7d2:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = icmp eq i8 %2, 127
  br i1 %3, label %dec_label_pc_c810, label %dec_label_pc_c7f2

dec_label_pc_c7f2:                                ; preds = %dec_label_pc_c7d2
  %4 = trunc i64 %1 to i32
  %5 = mul i32 %4, 16777216
  %sext = add i32 %5, 16777216
  %6 = udiv i32 %sext, 16777216
  %7 = trunc i32 %6 to i8
  call void @printHexCharLine(i8 %7)
  br label %dec_label_pc_c81f

dec_label_pc_c810:                                ; preds = %dec_label_pc_c7d2
  call void @printLine(ptr @global_var_81d20)
  br label %dec_label_pc_c81f

dec_label_pc_c81f:                                ; preds = %dec_label_pc_c810, %dec_label_pc_c7f2
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

