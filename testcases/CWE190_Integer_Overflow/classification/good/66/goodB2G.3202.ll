@global_var_70cd0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_13ee3:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_13f76, label %dec_label_pc_13f71

dec_label_pc_13f71:                               ; preds = %dec_label_pc_13ee3
  call void @__stack_chk_fail()
  br label %dec_label_pc_13f76

dec_label_pc_13f76:                               ; preds = %dec_label_pc_13f71, %dec_label_pc_13ee3
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_14005:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %dec_label_pc_14051, label %dec_label_pc_14025

dec_label_pc_14025:                               ; preds = %dec_label_pc_14005
  %6 = icmp sgt i32 %4, 1073741822
  br i1 %6, label %dec_label_pc_14042, label %dec_label_pc_1402e

dec_label_pc_1402e:                               ; preds = %dec_label_pc_14025
  %7 = mul i32 %4, 2
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_14051

dec_label_pc_14042:                               ; preds = %dec_label_pc_14025
  call void @printLine(ptr @global_var_70cd0)
  br label %dec_label_pc_14051

dec_label_pc_14051:                               ; preds = %dec_label_pc_14042, %dec_label_pc_1402e, %dec_label_pc_14005
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

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

