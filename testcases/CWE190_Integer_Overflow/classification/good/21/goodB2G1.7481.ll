@global_var_6a288 = external constant [21 x i8]
@global_var_6a2a0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c1a4 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_23032:
  %0 = load i32, ptr @global_var_9c1a4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2305c, label %dec_label_pc_2304b

dec_label_pc_2304b:                               ; preds = %dec_label_pc_23032
  call void @printLine(ptr @global_var_6a288)
  br label %dec_label_pc_2308e

dec_label_pc_2305c:                               ; preds = %dec_label_pc_23032
  %2 = icmp eq i32 %data, 0
  br i1 %2, label %dec_label_pc_2308e, label %dec_label_pc_23062

dec_label_pc_23062:                               ; preds = %dec_label_pc_2305c
  %3 = icmp ult i32 %data, 2147483647
  br i1 %3, label %dec_label_pc_2306b, label %dec_label_pc_2307f

dec_label_pc_2306b:                               ; preds = %dec_label_pc_23062
  %4 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_2308e

dec_label_pc_2307f:                               ; preds = %dec_label_pc_23062
  call void @printLine(ptr @global_var_6a2a0)
  br label %dec_label_pc_2308e

dec_label_pc_2308e:                               ; preds = %dec_label_pc_2307f, %dec_label_pc_2306b, %dec_label_pc_2305c, %dec_label_pc_2304b
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_23091:
  store i32 0, ptr @global_var_9c1a4, align 4
  call void @anon0(i32 -1)
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

declare i32 @puts(ptr) local_unnamed_addr

