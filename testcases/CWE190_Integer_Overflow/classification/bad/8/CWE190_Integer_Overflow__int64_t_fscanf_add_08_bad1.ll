@global_var_715c0 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.1205() local_unnamed_addr {
dec_label_pc_327f2:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_32810:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = call i32 @staticReturnsTrue.1205()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_32863, label %dec_label_pc_32841

dec_label_pc_32841:                               ; preds = %dec_label_pc_32810
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_715c0, ptr nonnull %stack_var_-32)
  br label %dec_label_pc_32863

dec_label_pc_32863:                               ; preds = %dec_label_pc_32841, %dec_label_pc_32810
  %5 = call i32 @staticReturnsTrue.1205()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_32889, label %dec_label_pc_32871

dec_label_pc_32871:                               ; preds = %dec_label_pc_32863
  %7 = load i64, ptr %stack_var_-32, align 8
  %8 = add i64 %7, 1
  call void @printLongLongLine(i64 %8)
  br label %dec_label_pc_32889

dec_label_pc_32889:                               ; preds = %dec_label_pc_32871, %dec_label_pc_32863
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_3289e, label %dec_label_pc_32899

dec_label_pc_32899:                               ; preds = %dec_label_pc_32889
  call void @__stack_chk_fail()
  br label %dec_label_pc_3289e

dec_label_pc_3289e:                               ; preds = %dec_label_pc_32899, %dec_label_pc_32889
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

