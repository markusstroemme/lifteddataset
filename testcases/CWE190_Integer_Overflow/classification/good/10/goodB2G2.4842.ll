@global_var_719d0 = external constant [4 x i8]
@global_var_719f0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9070 = external local_unnamed_addr global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1b1b0:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9070, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1b238, label %dec_label_pc_1b1fd

dec_label_pc_1b1fd:                               ; preds = %dec_label_pc_1b1b0
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_719d0, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_a9070, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_1b238, label %dec_label_pc_1b207

dec_label_pc_1b207:                               ; preds = %dec_label_pc_1b1fd
  %6 = load i16, ptr %stack_var_-20, align 2
  %7 = icmp eq i16 %6, 32767
  br i1 %7, label %dec_label_pc_1b229, label %dec_label_pc_1b211

dec_label_pc_1b211:                               ; preds = %dec_label_pc_1b207
  %8 = add i16 %6, 1
  %9 = sext i16 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_1b238

dec_label_pc_1b229:                               ; preds = %dec_label_pc_1b207
  call void @printLine(ptr @global_var_719f0)
  br label %dec_label_pc_1b238

dec_label_pc_1b238:                               ; preds = %dec_label_pc_1b1b0, %dec_label_pc_1b229, %dec_label_pc_1b211, %dec_label_pc_1b1fd
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_1b24d, label %dec_label_pc_1b248

dec_label_pc_1b248:                               ; preds = %dec_label_pc_1b238
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b24d

dec_label_pc_1b24d:                               ; preds = %dec_label_pc_1b248, %dec_label_pc_1b238
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

