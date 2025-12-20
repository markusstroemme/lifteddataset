@global_var_8abd0 = external constant [3 x i8]
@global_var_8abd3 = external constant [21 x i8]
@global_var_8abe8 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc088 = external local_unnamed_addr global i32
@global_var_bc440 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5cf40:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_bc088, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5cf8e, label %dec_label_pc_5cf6c

dec_label_pc_5cf6c:                               ; preds = %dec_label_pc_5cf40
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_8abd0, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_5cf8e

dec_label_pc_5cf8e:                               ; preds = %dec_label_pc_5cf6c, %dec_label_pc_5cf40
  %5 = load i32, ptr @global_var_bc440, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_5cfa9, label %dec_label_pc_5cf98

dec_label_pc_5cf98:                               ; preds = %dec_label_pc_5cf8e
  call void @printLine(ptr @global_var_8abd3)
  br label %dec_label_pc_5cfdb

dec_label_pc_5cfa9:                               ; preds = %dec_label_pc_5cf8e
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_5cfcc, label %dec_label_pc_5cfb1

dec_label_pc_5cfb1:                               ; preds = %dec_label_pc_5cfa9
  %9 = add i32 %7, 1
  store i32 %9, ptr %stack_var_-24, align 4
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_5cfdb

dec_label_pc_5cfcc:                               ; preds = %dec_label_pc_5cfa9
  call void @printLine(ptr @global_var_8abe8)
  br label %dec_label_pc_5cfdb

dec_label_pc_5cfdb:                               ; preds = %dec_label_pc_5cfcc, %dec_label_pc_5cfb1, %dec_label_pc_5cf98
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_5cff0, label %dec_label_pc_5cfeb

dec_label_pc_5cfeb:                               ; preds = %dec_label_pc_5cfdb
  call void @__stack_chk_fail()
  br label %dec_label_pc_5cff0

dec_label_pc_5cff0:                               ; preds = %dec_label_pc_5cfeb, %dec_label_pc_5cfdb
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

