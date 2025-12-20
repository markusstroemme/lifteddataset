@global_var_72d58 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a9038 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_247ab:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9038, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2481e, label %dec_label_pc_247f8

dec_label_pc_247f8:                               ; preds = %dec_label_pc_247ab
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72d58, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_a9038, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_2481e, label %dec_label_pc_24802

dec_label_pc_24802:                               ; preds = %dec_label_pc_247f8
  %6 = load i16, ptr %stack_var_-20, align 2
  %7 = mul i16 %6, %6
  %8 = sext i16 %7 to i32
  call void @printIntLine(i32 %8)
  br label %dec_label_pc_2481e

dec_label_pc_2481e:                               ; preds = %dec_label_pc_247ab, %dec_label_pc_24802, %dec_label_pc_247f8
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_24833, label %dec_label_pc_2482e

dec_label_pc_2482e:                               ; preds = %dec_label_pc_2481e
  call void @__stack_chk_fail()
  br label %dec_label_pc_24833

dec_label_pc_24833:                               ; preds = %dec_label_pc_2482e, %dec_label_pc_2481e
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

