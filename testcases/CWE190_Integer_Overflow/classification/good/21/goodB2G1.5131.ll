@global_var_71c70 = external constant [4 x i8]
@global_var_71c74 = external constant [21 x i8]
@global_var_71c90 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a9148 = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_1c4b7:
  %0 = load i32, ptr @global_var_a9148, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1c4e4, label %dec_label_pc_1c4d3

dec_label_pc_1c4d3:                               ; preds = %dec_label_pc_1c4b7
  call void @printLine(ptr @global_var_71c74)
  br label %dec_label_pc_1c513

dec_label_pc_1c4e4:                               ; preds = %dec_label_pc_1c4b7
  %2 = icmp eq i16 %data, 32767
  br i1 %2, label %dec_label_pc_1c504, label %dec_label_pc_1c4ec

dec_label_pc_1c4ec:                               ; preds = %dec_label_pc_1c4e4
  %3 = add i16 %data, 1
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_1c513

dec_label_pc_1c504:                               ; preds = %dec_label_pc_1c4e4
  call void @printLine(ptr @global_var_71c90)
  br label %dec_label_pc_1c513

dec_label_pc_1c513:                               ; preds = %dec_label_pc_1c504, %dec_label_pc_1c4ec, %dec_label_pc_1c4d3
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1c516:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_71c70, ptr nonnull %stack_var_-18)
  store i32 0, ptr @global_var_a9148, align 4
  %3 = load i16, ptr %stack_var_-18, align 2
  call void @anon0(i16 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1c584, label %dec_label_pc_1c57f

dec_label_pc_1c57f:                               ; preds = %dec_label_pc_1c516
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c584

dec_label_pc_1c584:                               ; preds = %dec_label_pc_1c57f, %dec_label_pc_1c516
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

