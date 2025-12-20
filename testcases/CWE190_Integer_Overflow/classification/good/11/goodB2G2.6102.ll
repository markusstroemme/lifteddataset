@global_var_724c8 = external constant [4 x i8]
@global_var_724e8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_205ec:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2063d, label %dec_label_pc_2061b

dec_label_pc_2061b:                               ; preds = %dec_label_pc_205ec
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_724c8, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_2063d

dec_label_pc_2063d:                               ; preds = %dec_label_pc_2061b, %dec_label_pc_205ec
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp slt i16 %7, 1
  %or.cond = or i1 %6, %8
  br i1 %or.cond, label %dec_label_pc_20684, label %dec_label_pc_20654

dec_label_pc_20654:                               ; preds = %dec_label_pc_2063d
  %9 = icmp sgt i16 %7, 16382
  br i1 %9, label %dec_label_pc_20675, label %dec_label_pc_2065e

dec_label_pc_2065e:                               ; preds = %dec_label_pc_20654
  %10 = mul i16 %7, 2
  %11 = sext i16 %10 to i32
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_20684

dec_label_pc_20675:                               ; preds = %dec_label_pc_20654
  call void @printLine(ptr @global_var_724e8)
  br label %dec_label_pc_20684

dec_label_pc_20684:                               ; preds = %dec_label_pc_20675, %dec_label_pc_2065e, %dec_label_pc_2063d
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_20699, label %dec_label_pc_20694

dec_label_pc_20694:                               ; preds = %dec_label_pc_20684
  call void @__stack_chk_fail()
  br label %dec_label_pc_20699

dec_label_pc_20699:                               ; preds = %dec_label_pc_20694, %dec_label_pc_20684
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_5e30b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

