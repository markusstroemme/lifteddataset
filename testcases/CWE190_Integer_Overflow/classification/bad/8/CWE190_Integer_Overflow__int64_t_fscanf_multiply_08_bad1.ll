@global_var_72060 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.1327() local_unnamed_addr {
dec_label_pc_37d3c:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_37d5a:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = call i32 @staticReturnsTrue.1327()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_37dad, label %dec_label_pc_37d8b

dec_label_pc_37d8b:                               ; preds = %dec_label_pc_37d5a
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72060, ptr nonnull %stack_var_-32)
  br label %dec_label_pc_37dad

dec_label_pc_37dad:                               ; preds = %dec_label_pc_37d8b, %dec_label_pc_37d5a
  %5 = call i32 @staticReturnsTrue.1327()
  %6 = icmp eq i32 %5, 0
  %7 = load i64, ptr %stack_var_-32, align 8
  %8 = icmp slt i64 %7, 1
  %or.cond = or i1 %6, %8
  br i1 %or.cond, label %dec_label_pc_37ddb, label %dec_label_pc_37dc4

dec_label_pc_37dc4:                               ; preds = %dec_label_pc_37dad
  %9 = mul i64 %7, 2
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_37ddb

dec_label_pc_37ddb:                               ; preds = %dec_label_pc_37dc4, %dec_label_pc_37dad
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_37df0, label %dec_label_pc_37deb

dec_label_pc_37deb:                               ; preds = %dec_label_pc_37ddb
  call void @__stack_chk_fail()
  br label %dec_label_pc_37df0

dec_label_pc_37df0:                               ; preds = %dec_label_pc_37deb, %dec_label_pc_37ddb
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

