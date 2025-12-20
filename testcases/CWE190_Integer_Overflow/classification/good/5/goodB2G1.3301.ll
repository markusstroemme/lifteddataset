@global_var_68090 = external constant [3 x i8]
@global_var_68093 = external constant [21 x i8]
@global_var_680a8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c020 = external local_unnamed_addr global i32
@global_var_9c0e8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1402c:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c020, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1407a, label %dec_label_pc_14058

dec_label_pc_14058:                               ; preds = %dec_label_pc_1402c
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68090, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_1407a

dec_label_pc_1407a:                               ; preds = %dec_label_pc_14058, %dec_label_pc_1402c
  %5 = load i32, ptr @global_var_9c0e8, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_14095, label %dec_label_pc_14084

dec_label_pc_14084:                               ; preds = %dec_label_pc_1407a
  call void @printLine(ptr @global_var_68093)
  br label %dec_label_pc_140c9

dec_label_pc_14095:                               ; preds = %dec_label_pc_1407a
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_140c9, label %dec_label_pc_1409c

dec_label_pc_1409c:                               ; preds = %dec_label_pc_14095
  %9 = icmp ult i32 %7, 2147483647
  br i1 %9, label %dec_label_pc_140a6, label %dec_label_pc_140ba

dec_label_pc_140a6:                               ; preds = %dec_label_pc_1409c
  %10 = mul i32 %7, 2
  call void @printUnsignedLine(i32 %10)
  br label %dec_label_pc_140c9

dec_label_pc_140ba:                               ; preds = %dec_label_pc_1409c
  call void @printLine(ptr @global_var_680a8)
  br label %dec_label_pc_140c9

dec_label_pc_140c9:                               ; preds = %dec_label_pc_140ba, %dec_label_pc_140a6, %dec_label_pc_14095, %dec_label_pc_14084
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_140de, label %dec_label_pc_140d9

dec_label_pc_140d9:                               ; preds = %dec_label_pc_140c9
  call void @__stack_chk_fail()
  br label %dec_label_pc_140de

dec_label_pc_140de:                               ; preds = %dec_label_pc_140d9, %dec_label_pc_140c9
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

