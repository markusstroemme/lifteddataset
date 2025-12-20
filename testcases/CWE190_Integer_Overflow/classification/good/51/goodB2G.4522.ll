@global_var_8397e = external constant [4 x i8]
@global_var_83988 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1987d:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8397e, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %stack_var_-24, align 8
  call void @anon0(i64 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_198e3, label %dec_label_pc_198de

dec_label_pc_198de:                               ; preds = %dec_label_pc_1987d
  call void @__stack_chk_fail()
  br label %dec_label_pc_198e3

dec_label_pc_198e3:                               ; preds = %dec_label_pc_198de, %dec_label_pc_1987d
  ret void
}

define void @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_1995c:
  %0 = icmp eq i64 %data, 9223372036854775807
  br i1 %0, label %dec_label_pc_19997, label %dec_label_pc_1997c

dec_label_pc_1997c:                               ; preds = %dec_label_pc_1995c
  %1 = add i64 %data, 1
  call void @printLongLongLine(i64 %1)
  br label %dec_label_pc_199a6

dec_label_pc_19997:                               ; preds = %dec_label_pc_1995c
  call void @printLine(ptr @global_var_83988)
  br label %dec_label_pc_199a6

dec_label_pc_199a6:                               ; preds = %dec_label_pc_19997, %dec_label_pc_1997c
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

