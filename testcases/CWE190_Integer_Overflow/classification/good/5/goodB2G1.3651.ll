@global_var_832b8 = external constant [4 x i8]
@global_var_832bc = external constant [21 x i8]
@global_var_832d8 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc028 = external local_unnamed_addr global i32
@global_var_bc140 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_161e5:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_bc028, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_16234, label %dec_label_pc_16212

dec_label_pc_16212:                               ; preds = %dec_label_pc_161e5
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_832b8, ptr nonnull %stack_var_-32)
  br label %dec_label_pc_16234

dec_label_pc_16234:                               ; preds = %dec_label_pc_16212, %dec_label_pc_161e5
  %5 = load i32, ptr @global_var_bc140, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_1624f, label %dec_label_pc_1623e

dec_label_pc_1623e:                               ; preds = %dec_label_pc_16234
  call void @printLine(ptr @global_var_832bc)
  br label %dec_label_pc_16293

dec_label_pc_1624f:                               ; preds = %dec_label_pc_16234
  %7 = load i64, ptr %stack_var_-32, align 8
  %8 = icmp eq i64 %7, 9223372036854775807
  br i1 %8, label %dec_label_pc_16284, label %dec_label_pc_16262

dec_label_pc_16262:                               ; preds = %dec_label_pc_1624f
  %9 = add i64 %7, 1
  store i64 %9, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_16293

dec_label_pc_16284:                               ; preds = %dec_label_pc_1624f
  call void @printLine(ptr @global_var_832d8)
  br label %dec_label_pc_16293

dec_label_pc_16293:                               ; preds = %dec_label_pc_16284, %dec_label_pc_16262, %dec_label_pc_1623e
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_162a8, label %dec_label_pc_162a3

dec_label_pc_162a3:                               ; preds = %dec_label_pc_16293
  call void @__stack_chk_fail()
  br label %dec_label_pc_162a8

dec_label_pc_162a8:                               ; preds = %dec_label_pc_162a3, %dec_label_pc_16293
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

