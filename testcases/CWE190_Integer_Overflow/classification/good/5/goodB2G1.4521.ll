@global_var_68ae0 = external constant [3 x i8]
@global_var_68ae3 = external constant [21 x i8]
@global_var_68af8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c028 = external local_unnamed_addr global i32
@global_var_9c124 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1911c:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c028, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1916a, label %dec_label_pc_19148

dec_label_pc_19148:                               ; preds = %dec_label_pc_1911c
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68ae0, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_1916a

dec_label_pc_1916a:                               ; preds = %dec_label_pc_19148, %dec_label_pc_1911c
  %5 = load i32, ptr @global_var_9c124, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_19185, label %dec_label_pc_19174

dec_label_pc_19174:                               ; preds = %dec_label_pc_1916a
  call void @printLine(ptr @global_var_68ae3)
  br label %dec_label_pc_191c1

dec_label_pc_19185:                               ; preds = %dec_label_pc_1916a
  %7 = load i32, ptr %stack_var_-24, align 4
  %.off = add i32 %7, 65534
  %8 = icmp ugt i32 %.off, 131068
  br i1 %8, label %dec_label_pc_191b2, label %dec_label_pc_19199

dec_label_pc_19199:                               ; preds = %dec_label_pc_19185
  %9 = mul i32 %7, %7
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_191c1

dec_label_pc_191b2:                               ; preds = %dec_label_pc_19185
  call void @printLine(ptr @global_var_68af8)
  br label %dec_label_pc_191c1

dec_label_pc_191c1:                               ; preds = %dec_label_pc_191b2, %dec_label_pc_19199, %dec_label_pc_19174
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_191d6, label %dec_label_pc_191d1

dec_label_pc_191d1:                               ; preds = %dec_label_pc_191c1
  call void @__stack_chk_fail()
  br label %dec_label_pc_191d6

dec_label_pc_191d6:                               ; preds = %dec_label_pc_191d1, %dec_label_pc_191c1
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

